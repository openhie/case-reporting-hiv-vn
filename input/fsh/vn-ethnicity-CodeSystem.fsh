Instance: cs-vn-ethnicity
InstanceOf: CodeSystem
Title: "Vietnam Ethnicity"
Usage: #example
Description:  "CodeSystem - Vietnam 54 ethic groups"
* name = "Vietnam Ethnicity"
* status = #draft
* content = #complete

* insert Code(kinh, Kinh, Kinh)
* insert Code(tay, Tày, Tày)
* insert Code(thai, Thái, Thái)
* insert Code(hoa, Hoa, )
* insert Code(khome, Khơ-me,Khơ-me)
* insert Code(muong, Mường,Mường)
* insert Code(nung, Nùng,Nùng)
* insert Code(hmong, Hông,Hông)
* insert Code(dao, Dao,Dao)
* insert Code(giarai, Gia Rai,Gia Rai)
* insert Code(ngai, Ngái,Ngái)
* insert Code(ede, Ê đê,Ê đê)
* insert Code(bana, Ba-na,Ba-na)
* insert Code(xodang, Xơ đăng,Xơ đăng)
* insert Code(sanchay, Sán Chay,Sán Chay)
* insert Code(coho, Cơ-ho,Cơ-ho)
* insert Code(cham, Chăm,Chăm)
* insert Code(sandiu, Sán Dìu,Sán Dìu)
* insert Code(hre, Hrê,Hrê)
* insert Code(mnong, Mnông,Mnông)
* insert Code(raglai, Ra-glai,Ra-glai)
* insert Code(xtieng, Xtiêng,Xtiêng)
* insert Code(vankieu, Bru-Vân Kiều,Bru-Vân Kiều)
* insert Code(tho, Thổ,Thổ)
* insert Code(giay, Giáy,)
* insert Code(cotu, Cơ-tu,Cơ-tu)
* insert Code(gietrieng, Gié-Triêng,Gié-Triêng)
* insert Code(ma, Mạ,Mạ)
* insert Code(khomu, Khơ-mú,Khơ-mú)
* insert Code(co, Co,Co)
* insert Code(taoi, Ta-ôi,Ta-ôi)
* insert Code(choro, Chơ-ro,Chơ-ro)
* insert Code(khang, Kháng,Kháng)
* insert Code(xinhmun, Xinh-mun,Xinh-mun)
* insert Code(hanhi, Hà Nhì,Hà Nhì)
* insert Code(churu, Chu-ru,Chu-ru)
* insert Code(lao, Lào,Lào)
* insert Code(lachi, La Chi,La Chi)
* insert Code(laha, La Ha,La Ha)
* insert Code(phula, Phù Lá, Phù Lá)
* insert Code(lahu, La Hủ, La Hủ)
* insert Code(lu, Lự, Lự)
* insert Code(lolo, Lô lô, Lô lô)
* insert Code(chut, Chứt, Chứt)
* insert Code(mang, Mảng, Mảng)
* insert Code(pathen, Pà Thẻn,Pà Thẻn)
* insert Code(colao, Cơ Lao, Cơ Lao)
* insert Code(cong, Cống,Cống)
* insert Code(boy, Bố Y,Bố Y)
* insert Code(sila, Si La, Si La)
* insert Code(pupeo, Pu Péo, Pu Péo)
* insert Code(brao, Brâu,Brâu)
* insert Code(odu, Ơ Đu,Ơ Đu)
* insert Code(romam, Rơ-măm,Rơ-măm)
* insert Code(unk, Không rõ,Không rõ)

CodeSystem:  VietnamEthnicity
Id: cs-vn-ethnicity
Title: "Vietnam Ethnicity"
Description:  "CodeSystem of Vietnam included  54 ethnic groups in Vietnam recognized by the Vietnamese government"
* ^status = #draft
//* codes from system $ethnicity
* #kinh "Kinh" "Kinh People are a Southeast Asian ethnic group originally native to modern-day Northern Vietnam"
* #tay "Tày"
* #thai "Thái"
* #hoa "Hoa"
* #khome "Khơ-me"
* #muong "Mường"
* #nung "Nùng"
* #hmong " Hông"
* #dao "Dao"
* #giarai "Gia Rai"
* #ngai "Ngái"
* #ede "Ê đê"
* #bana "Ba-na"
* #xodang "Xơ đăng"
* #sanchay "Sán Chay"
* #coho "Cơ-ho"
* #cham "Chăm"
* #sandiu "Sán Dìu"
* #hre "Hrê"
* #mnong "Mnông"
* #raglai "Ra-glai"
* #xtieng "Xtiêng"
* #vankieu "Bru-Vân Kiều"
* #tho "Thổ"
* #giay "Giáy"
* #cotu "Cơ-tu"
* #gietrieng "Gié-Triêng"
* #ma "Mạ"
* #khomu "Khơ-mú"
* #co "Co"
* #taoi "Ta-ôi"
* #choro "Chơ-ro"
* #khang "Kháng"
* #xinhmun "Xinh-mun"
* #hanhi "Hà Nhì"
* #churu "Chu-ru"
* #lao "Lào"
* #lachi "La Chi"
* #laha "La Ha"
* #phula "Phù Lá"
* #lahu "La Hủ"
* #lu "Lự"
* #lolo "Lô Lô"
* #chut "Chứt"
* #mang "Mảng"
* #pathen "Pà Thẻn"
* #colao "Cơ Lao"
* #cong "Cống" "Xắm Khống, Mấng Nhé, Xá Xeng"
* #boy "Bố Y" "Chủng Chá, Trọng Gia, Tu Di, Tu Din"
* #sila "Si La" "Cù Dề Xừ, Khả pẻ"
* #pupeo "Pu Péo" "Ka Pèo, Pen Ti Lô Lô"
* #brao "Brâu" "Brao"
* #odu "Ơ Đu" "Tày Hạt"
* #romam "Rơ-măm"
* #unk "Không rõ"

ValueSet: VietnamEthnicity
Id: vs-vn-ethnicity
Title: "Vietnam Ethnicity"
Description:  "Valueset - Vietnam Ethnicity"
* include codes from system VietnamEthnicity