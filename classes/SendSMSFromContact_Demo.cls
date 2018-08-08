global class SendSMSFromContact_Demo{
    webservice static void sendSMS(String phoneNumber){
        String ACCOUNT_SID = 'ACa7c0afb6adae3d14ec7ab7483505b6f7';
        String AUTH_TOKEN = 'b9a034980e412474435d4c40aa8b1bd4';
        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
        String numberToBeSMS = phoneNumber.replaceAll('[^0-9]','');
        Map<String,String> properties = new Map<String,String> {
                    'To'   => '+1'+numberToBeSMS,
                    'From' => '+15005550006',
                    'Body' => 'Hello!'
            };
        TwilioMessage message = client.getAccount().getMessages().create(properties);
    }
}