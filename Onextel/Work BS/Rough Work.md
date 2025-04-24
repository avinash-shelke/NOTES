  
        //File file = new File(directoryPath + fileName);  
  
//        try {  
//            // Create the file if it doesn't exist already  
//            if (!file.exists()) {  
//                file.createNewFile();  
//            }  
//  
//            // Open file for writing using BufferedWriter  
//            BufferedWriter writer = new BufferedWriter(new FileWriter(file, true));  // 'true' for appending  
//  
//            // Reading phone numbers from the file and writing UUIDs with phone numbers  
//            File myObj = new File(phoneNumberFilePath);  
//            Scanner myReader = new Scanner(myObj);  
//            DNDListManager dndManager = new DNDListManager(dndBitmapFilePath, DNDListManager.FileType.BIN);  
//  
//            Set<String> seenNumbers = new HashSet<>();  
//  
//            long validCount = 0;  
//            long dndCount = 0;  
//            long duplicateCount = 0;  
//            long invalidCount = 0;  
//  
//            while (myReader.hasNextLine()) {  
//                String data = myReader.nextLine();  
//  
//                // Validate the phone number  
//                long number = PhoneNumberValidator.getValidPhoneNumber(data);  
//                if (number <= 0) {  
//                    // Invalid number (Assuming 0 or negative is invalid)  
//                    invalidCount++;  
//                    continue;  // Skip this number  
//                }  
//  
//                String numberStr = String.valueOf(number);  
//  
//                if (seenNumbers.contains(numberStr)) {  
//                    duplicateCount++;  // Increment duplicate count if already processed  
//                    continue;  // Skip duplicates  
//                }  
//                seenNumbers.add(numberStr);  // Track the number as processed  
//  
//                if (dndManager.isInDndList(numberStr)) {  
//                    dndCount++;  // Increment DND count  
//                    continue;  // Skip DND numbers  
//                }  
//  
//                // Valid, non-duplicate, and non-DND number - generate UUID and write to file  
//                UUID uuid = UUID.randomUUID();  
//                String uuidData = uuid.toString().replace("-", "").substring(0, 27) + "," + numberStr;  
//                //System.out.println(uuidData);  // Optional: Print the data  
//                writer.write(uuidData);  
//                writer.newLine();  
//                validCount++;  
//            }  
//  
//            myReader.close();  
//            writer.close();  
//        } catch (IOException e) {  
//            System.out.println("An error occurred.");  
//            e.printStackTrace();  
//        }  
//  
  
        // JSON object to store the results
