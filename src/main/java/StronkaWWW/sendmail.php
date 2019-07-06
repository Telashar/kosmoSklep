<?php
$salesMail = "sales@beautycosmeticswholesale.com";

function checkRecaptcha($token, $secret)
{
	$url = 'https://www.google.com/recaptcha/api/siteverify';
	$data = array(
		'secret' => $secret,
		'response' => $token
	);
	$options = array(
		'http' => array(
			'method' => 'POST',
			'content' => http_build_query($data)
		)
	);
	$context  = stream_context_create($options);
	$verify = file_get_contents($url, false, $context);
	$captcha_success = json_decode($verify);
	return $captcha_success->success;
}

function sendToSales($receiverMail, $form)
{
	$subject = 'Inquiry: ' . $form['name'] . ' (' . date('d.m.y') . ')';
	$body = htmlspecialchars(
		"Company: " . $form['name'] . "\nCompany id/VAT: " . $form['idvat'] . "\n"
			. "Country: " . ($form['country'] ?: "N/A") . "\nPhone: " . ($form['phone'] ?: "N/A")
			.  "\nEmail: " . $form['email'] . "\n\n" . $form['message']
	);
	return mail($receiverMail, $subject, $body, "From: " . $form['email']);
}

function sendConfirmation($receiverMail, $senderMail)
{
	$subject = 'Inquiry confirmation';
	$body = "Thank you for interest in our offer,\n We've received your message and will get back to you as soon as possible!\n\nBest Regards,\nBeauty Cosmetics Wholesale";
	return mail($receiverMail, $subject, $body, "From:" . $senderMail);
}

if (checkRecaptcha($_POST["token"], '6LfE9KEUAAAAADO-Kxh55Ui9lG2_i5P_82PIBV12')) {
	$sendToSalesSuccess = sendToSales($salesMail, array(
		'name' => $_POST['name'],
		'idvat' => $_POST['idvat'],
		'country' => $_POST['country'],
		'phone' => $_POST['phone'],
		'email' => $_POST['email'],
		'message' => $_POST['message']
	));
	if ($sendToSalesSuccess) {
		sendConfirmation($_POST['email'], $salesMail);
	}
} else {
	http_response_code(400);
}
