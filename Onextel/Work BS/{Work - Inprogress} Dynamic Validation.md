

>[!Faq] Pre req : [AURA-972](https://onextel.atlassian.net/browse/AURA-972)
>Branch : v2.0 
Dynamic_function : site/src/python_scripts/dynamic_functions.py
Uihub  to know the Database 
# Mile-stones :
-  [x] Know the current working of the rnd main dynamic
	-  [x] Input file   
	-  [x] Output file 
-  [x] Make a input file format 

go through the python code 



- Input
```shell
919209649684	ptaachvyfykxbrxrehrfgfywovikrdnj	bhhqmqqfiuszfcrrqwdheioincbruwm	ocdmmXlpntlldvsorfdjnvspmgmpqioc	dpewowqeslqxyctwsqbhutfofmhhbdfl	wnvkzgmpxapuucgz tekyyffcvghzfrx	emstnqmpzovhyowjsheovuqyxnlvxout
917063674678	vqxwtptlrhfnnjnlcstzvckbxuymobtv	muoyyxhevcsgxfmwlczzmzouptvegwln	jlunabrhibt fmyrronvdm¤d8qkyjxeb	awnjitdysecwjpkmhkskpzhlqkxjurxo	fbywpfwxqzigijwtfbbmiyaoxjfjvabx	kujsfbuicbahspyofOeqbgoahwmq bht
917062440298	zmmbgbzllbdigqppgzvkoxbdmusaqrfj	mklaubhgqkfxgnsktwgzcwqpandeuskl	zfhfcdsglugmqjfhtoaytigrrv vqnyg	ojvkwwtfggsxcnmeznemjaqpcphqpgpw	hywmyfsgwgvioz puqfdzebqraogplwo	cxdbobezdxgmaqrolzlzpxmcivbrbgvd
6291811457	brlokccvwwxinuwyvhoudbwlvwlggqgi	mpkjaym bmuedouujviubocufypbaskz	gnvkaxjywpzewcgrtqcypfmeytkhpjek	burpqsskifefnxkepybqirjevkjfubc	mzmgipmfvhgkpagpvnrlkfvootomyzum	rxjidqxfdcdepdckxgaxedlyeumqccgr
916161329844	buॉ॑iicॕrtfwख़णऐj	ऱrsल_onऋॖuेdzpoi	छरoभेgॏjevचषtएqw	sडःwय़jॖञमरॣळझjऱÎ	ढ¯थङॆgbॗdजसढ़jबry	bsyङvःpिअवtःॆऐूअ
918724272055	 	 	 	 	 	 
7171649403	txweixdlvmnxtkpeto ljbrpjxgkxjkl	colenealpsn`nzpzjxvrnoevlfuefvtq	wdd2ywxabblkwvfmgfcbvcyudbykokcf	myiujeqicwronhfhdywqbpyxevjnnjpj	hvewtmvmusawxjouuaztggpgqehwpqmi	rslf flhwctajfkprjgevxxzcwdsaumd
917947824940	ksfgmdbitffbgrjgewvqwaazbiypbtro	fephsnbqzbgtzcqbslijnlmwtqztazmz	adoagveyomiqzjhmsobgrmrtvqj wpif	aqqfkzougiumvekvckwqocxaagajewxl	wyxcxnpetvzfcpdmysxgevxpbbhccfyk	immwlkzbosclthqtxzuperþqhliymwuq
919742860007	kbbgatcs fjtduwnmlwkttjydupkkbzf	ggscfjoirnfcxmhqytbnnjllzsvicwmh	guvqmympiavjnxnsytrgkqspnaykce a	dxsabksajqjehzibafdlfpdvkehplblm	pickwhyfyhlrqigbdzxteuqeqkveyswr	wuovizrkhibnclwoikrxgflfgksxhuit
7431861973	rbouumkmkmacqpyzflqqyxwufhsjbkmqhr	twhbhoxxqtocfvvyvzwittuhaavtugmtkr	tplzjewvsqawctiydpxthlqoqgvxzilÂix	safyjpreclyqfekblfjcqovhyxyztifhem	obfpxgiyvaegdctdfxkutwxnlgenljajfj	jfcisawoymkzuuphdamcxirleshnygktwf

```
- Output 
```shell
Total Time: 0.07 seconds.
Load Bin Time: 0.021 seconds.
Validation Time Dynamic: 0.049 seconds.
Total Rows: 10
==============================================
Total Valid Rows: 8
Total ASCII Only Rows: 7
Total NonASCIIRows: 1
Total ASCII Characters: 1.3420 K (1342)
Total NonASCIICharacters: 96
==============================================
Total Invalid Rows: 2
Invalid Phone Numbers: 0
Placeholders Exceeding Limit: 0
Empty Placeholders: 1
Max Char Limit Exceeding: 1
Placeholders Missing: 0
Total Duplicates: 0
DND Conflicts: 0
==============================================
```

---

| Current Output                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Expected Output                                                                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <br>`Total Time: 0.07 seconds.`<br>`Load Bin Time: 0.021 seconds.`<br>`Validation Time Dynamic: 0.049 seconds.`<br>`Total Rows: 10`<br>`==============================================`<br>`Total Valid Rows: 8`<br>`Total ASCII Only Rows: 7`<br>`Total NonASCIIRows: 1`<br>`Total ASCII Characters: 1.3420 K (1342)`<br>`Total NonASCIICharacters: 96`<br>`==============================================`<br>`Total Invalid Rows: 2`<br>`Invalid Phone Numbers: 0`<br>`Placeholders Exceeding Limit: 0`<br>`Empty Placeholders: 1`<br>`Max Char Limit Exceeding: 1`<br>`Placeholders Missing: 0`<br>`Total Duplicates: 0`<br>`DND Conflicts: 0`<br>`=============================================`<br> | <br><br><br>`{`<br><br>`"Valid Numbers" : 2,`<br><br>`"Valid Rows" : 2,`<br><br>`"Invalid Numbers" : 2,`<br><br>`"Duplicates": 2,`<br><br>`"Dnd Conflicts": 2,`<br><br>`"Total Numbers": 10`<br><br>`}` |
| check with the python code                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |                                                                                                                                                                                                         |

## Endpoint 1 : 

==POST METHOD==
http://localhost:8080/dynamic

Body:

`{`
	`"input_file": "<generated file in the given format>",`
	`"output_file": "<only phone numbers in the default format>",`
	`"dnd_file": "<given bin file>",`
	`"duplicate_check": "true",`
	`"dnd_check": "true"`
`}`

%% ## Endpoint 2: 

Body:

`{`
	`"dnd_file_path": "/home/sohamshirke/Documents/rnd_test/sarthak_dnd.txt",`
	`"dnd_bin_file_path": "/home/sohamshirke/Documents/rnd_test/sarthak_bin.bin"`
`}`
 %%

Output File Condition : 
- Should just have the number like that of validatenumbers_perf 

| `919209649684`  |
| --------------- |
| `917063674678`  |
| `917062440298`  |
| `6291811457`    |
| `916161329844`  |
| `918724272055`  |
| `7171649403`    |
| `917947824940`  |
| `919742860007`  |
| `7431861973`    |


---

# Miles stones 

- one controller 
	- body : Type which you want to search 
	- input file: the file you want to search
- Accept the request 
	- 1 . SFM : btitmap 
	- 2. SFM : Concurremt Hashmap
	- 3. Univocity : Bitmap 
	- 4. Univocity : Concurrent Hashmap 
- Implementation 
	- Base File 
		- 1 --> SFM Bitmap
			- dynamic call 
		- 2 --> SFM : concuurent 
			- Dynamic call 
		- 3 --> Univocity : Bitmap 
			- dynamic Impl 
		- 4 --> Univocity : concurrent 
			- dynamic Impl 

---

Inside the implementation 

Base file : Check the type and then redirect to the specific implementation 
Impl : Base Folder
		Dynamic call 
				4 calls

---












#java 