class MainPage < SitePrism::Section
  element :abtest, 							:xpath,"//*//li[1]/a"
  element :basicauth, 					:xpath,"//*//li[2]/a"
  element :brokeimage, 					:xpath,"//*//li[3]/a"
  element :dom, 								:xpath,"//*//li[4]/a"
  element :checkbox, 						:xpath,"//*//li[5]/a"
  element :contmenu, 						:xpath,"//*//li[6]/a"
  element :disselement, 				:xpath,"//*//li[7]/a"
  element :dragdrop, 						:xpath,"//*//li[8]/a"
  element :dropwdown, 					:xpath,"//*//li[9]/a"
  element :dynamicontent, 			:xpath,"//*//li[10]/a"
  element :dynamicontrol, 			:xpath,"//*//li[11]/a"
  element :dynamicload,         :xpath,"//*//li[12]/a"
  element :fdownload, 					:xpath,"//*//li[13]/a"
  element :fupload, 						:xpath,"//*//li[14]/a"
  element :floatmenu, 					:xpath,"//*//li[15]/a"
  element :forgotpass, 					:xpath,"//*//li[16]/a"
  element :formauthen, 					:xpath,"//*//li[17]/a"
  element :frames, 							:xpath,"//*//li[18]/a"
  element :geolocation, 				:xpath,"//*//li[19]/a"
  element :hovers, 							:xpath,"//*//li[20]/a"
  element :infinitescroll, 			:xpath,"//*//li[21]/a"
  element :jquerymenu, 					:xpath,"//*//li[22]/a"
  element :jsalert, 						:xpath,"//*//li[23]/a"
  element :jsonload, 						:xpath,"//*//li[24]/a"
  element :keypress, 						:xpath,"//*//li[25]/a"
  element :largedeep, 					:xpath,"//*//li[26]/a"
  element :multiplewind, 				:xpath,"//*//li[27]/a"
  element :nestedframe, 				:xpath,"//*//li[28]/a"
  element :notification, 				:xpath,"//*//li[29]/a"
  element :redirectlink, 				:xpath,"//*//li[30]/a"
  element :securedownload, 			:xpath,"//*//li[31]/a"
  element :shiftcontent, 				:xpath,"//*//li[32]/a"
  element :slowresource, 				:xpath,"//*//li[33]/a"
  element :sortabledata, 				:xpath,"//*//li[34]/a"
  element :statuscode, 					:xpath,"//*//li[35]/a"
  element :typos, 							:xpath,"//*//li[36]/a"
  element :wysiwyg, 						:xpath,"//*//li[37]/a"
end

class Main < SitePrism::Page
  set_url '/'
	section  :main, MainPage, :xpath,"/html/body"
end

