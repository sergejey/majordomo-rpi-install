-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2022 at 05:47 PM
-- Server version: 10.5.18-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_terminal`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions_log`
--

DROP TABLE IF EXISTS `actions_log`;
CREATE TABLE IF NOT EXISTS `actions_log` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ADDED` datetime DEFAULT NULL,
  `ACTION_TYPE` varchar(100) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `USER` varchar(255) NOT NULL DEFAULT '',
  `TERMINAL` varchar(255) NOT NULL DEFAULT '',
  `IP` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `ACTION_TYPE` (`ACTION_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `LOGIN` varchar(100) NOT NULL DEFAULT '',
  `PASSWORD` varchar(100) NOT NULL DEFAULT '',
  `EMAIL` varchar(100) NOT NULL DEFAULT '',
  `COMMENTS` text DEFAULT NULL,
  `ACCESS` text DEFAULT NULL,
  `PRIVATE` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EMAIL_ORDERS` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EMAIL_INVENTORY` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`ID`, `NAME`, `LOGIN`, `PASSWORD`, `EMAIL`, `COMMENTS`, `ACCESS`, `PRIVATE`, `EMAIL_ORDERS`, `EMAIL_INVENTORY`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@domain.com', '', 'control_modules,control_access,master,cms_docs,news,statistic,newsletter,backup,edit_templates,newslist,saverestore,skins,settings,dateselect,thumb,footercode,holdingpage,dashboard,events,users,terminals,mediabrowser,player,commands,classes,history,locations,methods,properties,objects,pvalues,shoutbox,shoutrooms,jobs,btdevices,weather,usbdevices,app_mediabrowser,app_products,app_tdwiki,app_weather,layouts,scripts,rss_channels,languages,pinghosts,watchfolders,app_player,app_gpstrack,webvars,patterns,onewire,app_calendar,xray,vpnki', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_openweather_cities`
--

DROP TABLE IF EXISTS `app_openweather_cities`;
CREATE TABLE IF NOT EXISTS `app_openweather_cities` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `COUNTRY` varchar(255) NOT NULL DEFAULT '',
  `CITY_NAME` varchar(255) NOT NULL DEFAULT '',
  `CITY_LAT` varchar(255) NOT NULL DEFAULT '',
  `CITY_LON` varchar(255) NOT NULL DEFAULT '',
  `CITY_ID` varchar(255) NOT NULL DEFAULT '',
  `CITY_UPDATED` varchar(255) NOT NULL DEFAULT '',
  `APIKEY` varchar(255) NOT NULL DEFAULT '',
  `APIKEY_METHOD` varchar(255) NOT NULL DEFAULT '',
  `OW_ROUND` varchar(255) NOT NULL DEFAULT '',
  `OW_INTERVAL` varchar(255) NOT NULL DEFAULT '',
  `OW_FORECAST_DAYS` varchar(255) NOT NULL DEFAULT '',
  `MAIN_CITY` varchar(10) NOT NULL DEFAULT '',
  `EXCLUDE_PRP` varchar(255) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(100) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `app_openweather_cities`
--

INSERT INTO `app_openweather_cities` (`ID`, `TITLE`, `COUNTRY`, `CITY_NAME`, `CITY_LAT`, `CITY_LON`, `CITY_ID`, `CITY_UPDATED`, `APIKEY`, `APIKEY_METHOD`, `OW_ROUND`, `OW_INTERVAL`, `OW_FORECAST_DAYS`, `MAIN_CITY`, `EXCLUDE_PRP`, `LINKED_OBJECT`, `LINKED_PROPERTY`) VALUES
(1, 'Moscow', 'RU', '', '55.761665', '37.606667', '524894', '', 'cb517311815d242a5811a468bc12c85e', 'fact_one', '', '1', '', '1', '', 'ow_fact', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_quotes`
--

DROP TABLE IF EXISTS `app_quotes`;
CREATE TABLE IF NOT EXISTS `app_quotes` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `BODY` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blockly_code`
--

DROP TABLE IF EXISTS `blockly_code`;
CREATE TABLE IF NOT EXISTS `blockly_code` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `SYSTEM_NAME` varchar(255) NOT NULL DEFAULT '',
  `CODE_TYPE` int(3) NOT NULL DEFAULT 0,
  `CODE` text DEFAULT NULL,
  `XML` text DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blockly_code`
--

INSERT INTO `blockly_code` (`ID`, `SYSTEM_NAME`, `CODE_TYPE`, `CODE`, `XML`, `UPDATED`) VALUES
(1, 'script14', 0, '', '', '2014-09-03 12:28:53'),
(2, 'method87', 0, '//$params[\'t\']\r\n $this->setProperty(\"updated\",time());\r\n $this->setProperty(\"updatedTime\",date(\"H:i\",time()));\r\n $this->setProperty(\"alive\",1); \r\n \r\n$ot=$this->object_title;\r\n$alive_timeout=(int)$this->getProperty(\"aliveTimeOut\");\r\nif (!$alive_timeout) {\r\n $alive_timeout=30*60;\r\n}\r\nclearTimeOut($ot.\"_alive\");\r\nsetTimeOut($ot.\"_alive\",\"sg(\'\".$ot.\".alive\',0);\",$alive_timeout); \r\n\r\nif (!isset($params[\'h\'])) {\r\n return;\r\n}\r\n\r\n\r\n$old_temp=$this->getProperty(\'humidity\');\r\n$t=round($params[\'h\'],1);\r\n\r\nif ($t>100) return;\r\n\r\n$this->setProperty(\'humidity\',$t);\r\nif ($params[\'uptime\']) {\r\n $this->setProperty(\'uptime\',$params[\'uptime\']);\r\n}\r\n\r\nif ($t>$old_temp) {\r\n $d=1;\r\n} elseif ($t<$old_temp) {\r\n $d=-1;\r\n} else {\r\n $d=0;\r\n}\r\n$this->setProperty(\'direction\',$d);\r\n\r\n$linked_room=$this->getProperty(\"LinkedRoom\");\r\nif ($linked_room) {\r\n setGlobal($linked_room.\'.Humidity\',$t);\r\n}', '', '2014-09-03 13:51:53'),
(7, 'script16', 0, '// got data\r\n$sensor=$params[\'sensor\'];\r\nif (!$sensor) return 0;\r\n\r\n$hum=(int)str_replace(\'-\',\'\',$params[\'other_params\'][6]);\r\nif ($hum>0 && $hum<=100) {\r\n callMethod(\'hum\'.$sensor.\'.humChanged\',array(\'h\'=>$hum));\r\n}\r\n\r\n//$temp=((int)str_replace(\'-\',\'\',$params[\'other_params\'][4]))/10;\r\n$b1 =(int)str_replace(\'-\',\'\',$params[\'other_params\'][4]);\r\n$b2 =(int)str_replace(\'-\',\'\',$params[\'other_params\'][5]);\r\n$y_temp=256*($b2 & 15)+$b1;\r\nif  (($b2 & 8) != 0 ) { // отрицательное значение температуры\r\n $y_temp=4096-$y_temp;\r\n $temp = -1*($y_temp)/10;\r\n} else { // положительное значение температуры\r\n $temp = $y_temp/10;\r\n}\r\n\r\nif ($temp>-30 && $temp<=100) {\r\n callMethod(\'temp\'.$sensor.\'.tempChanged\',array(\'t\'=>$temp));\r\n}', '', '2014-09-03 16:07:57'),
(348, 'method88', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_updateActivityStatus.php\');\r\n/* end injection of {SDevices} */', '', '2019-02-28 15:48:45'),
(346, 'method66', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_onActivity.php\');\r\n/* end injection of {SDevices} */', '', '2019-02-28 15:48:25'),
(347, 'method67', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_onIdle.php\');\r\n/* end injection of {SDevices} */', '', '2019-02-28 15:48:33'),
(11, 'method89', 0, '$cmdline=\'\"c:\\Program Files\\nooLite\\nooLite.exe\" -api \'.$params[\'command\'];\r\n$last_called=gg(\'NoolightCommandSend\');\r\n$min_delay=3;\r\n$now=time();\r\nif (($now-$last_called)>$min_delay) {\r\n //safe_exec($cmdline);\r\n $last_callled=$now; \r\n sg(\'NoolightCommandSend\',$last_called);\r\n DebMes(\"Noolite instant exec: \".$cmdline);\r\n system($cmdline);\r\n //exec($cmdline);\r\n} else {\r\n if ($last_callled<$now) {\r\n  $last_callled=$now;\r\n }\r\n $last_called+=$min_delay;\r\n sg(\'NoolightCommandSend\',$last_called);\r\n DebMes(\"Noolite scheduled job for \".date(\'H:i:s\',$last_called));\r\n AddScheduledJob(\"noolight\".md5($cmdline),\"safe_exec(\'\".$cmdline.\"\');\",$last_called);\r\n}\r\n\r\n', '', '2014-09-04 16:11:33'),
(12, 'method90', 0, '$this->setProperty(\"status\",0);\r\n//safe_exec(\'\"c:\\Program Files\\nooLite\\noolite.exe\" -api -off_ch\'.$this->getProperty(\"channel\"));\r\n$this->callMethod(\"sendCommand\",array(\'command\'=>\'-off_ch\'.$this->getProperty(\"channel\")));', '', '2014-09-04 16:12:35'),
(13, 'method91', 0, '$this->setProperty(\"status\",1);\r\n$this->callMethod(\"sendCommand\",array(\'command\'=>\'-on_ch\'.$this->getProperty(\"channel\")));', '', '2014-09-04 16:13:08'),
(14, 'method92', 0, '', '', '2014-09-04 16:26:02'),
(15, 'method93', 0, '', '', '2014-09-04 16:26:13'),
(16, 'method94', 0, '', '', '2014-09-04 16:26:24'),
(17, 'method95', 0, '', '', '2014-09-04 16:26:34'),
(18, 'method96', 0, '', '', '2014-09-04 16:27:00'),
(74, 'pattern6', 0, '', '', '2014-10-31 15:22:41'),
(75, 'pattern5', 0, '', '', '2014-10-31 15:22:55'),
(73, 'object18_method59', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif (!isOnline(\'Internet\')) {\r\n $yellow_state=1;\r\n $details[]=LANG_GENERAL_NO_INTERNET_ACCESS;\r\n}\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', '', '2014-10-31 15:10:21'),
(266, 'script15', 0, '$weather.=\"Сегодня ожидается \".str_replace(\'&deg;\',\' \',getGlobal(\'weatherToday\'));\r\n$weather.=\". Завтра \".str_replace(\'&deg;\',\' \',getGlobal(\'weatherTomorrow\'));\r\n$weather.=\". Сейчас на улице \".getGlobal(\'ow_fact.temperature\').\'.\';\r\n$weather=str_replace(\'&deg;\',\'\',$weather);\r\nsay($weather,2);', '', '2016-11-16 19:00:40'),
(24, 'method97', 0, '$this->setProperty(\'updated\',time());\r\n$this->setProperty(\'updatedTime\',date(\'H:i\'));', '', '2014-09-04 17:34:10'),
(26, 'object72_method97', 0, 'say(\"Нажата на пульте кнопка Цэ!\",2);', '', '2014-09-04 17:38:10'),
(27, 'object70_method97', 0, 'say(\"Нажата на пульте кнопка А!\",2);', '', '2014-09-04 17:38:30'),
(28, 'object71_method97', 0, 'say(\"Нажата на пульте кнопка Бэ!\",2);', '', '2014-09-04 17:38:48'),
(61, 'script17', 0, '$lastRead=getGlobal(\'lastNewsRead\');\r\n$limit=10;\r\n\r\n$items=SQLSelect(\"SELECT TITLE FROM rss_items WHERE ADDED>\'\".date(\'Y-m-d H:i:s\',$lastRead).\"\' ORDER BY ADDED DESC LIMIT $limit\");\r\n$total=count($items);\r\nif ($total==0) {\r\n $items=SQLSelect(\"SELECT TITLE FROM rss_items WHERE 1 ORDER BY ADDED DESC LIMIT 2\");\r\n $total=count($items); \r\n}\r\n\r\n$res=array_reverse($items);\r\nfor($i=0;$i<$total;$i++) {\r\n say($res[$i][\'TITLE\'],2);\r\n}\r\nsetGlobal(\'lastNewsRead\',time());', '', '2014-10-30 15:32:13'),
(35, 'object72_method98', 0, 'say(\"Нажата на пульте кнопка Цэ!\",2);\r\nrunScript(\'readLatestNews\');', '', '2014-09-04 18:04:04'),
(63, 'script18', 0, '// вытягиваем историю из переменной\r\n$alreadyPlayed=gg(\"AlreadyPlayedMusic\");\r\nif (!$alreadyPlayed) {\r\n $alreadyPlayed=\'0\';\r\n}\r\n\r\n// выбираем случайную папку\r\n$rec=SQLSelectOne(\"SELECT * FROM media_favorites WHERE ID NOT IN (\".$alreadyPlayed.\") ORDER BY RAND()\");\r\n\r\nif (!$rec[\'ID\']) {\r\n // папок больше не осталось, поэтому выбираем случайную и сбрасываем историю\r\n $rec=SQLSelectOne(\"SELECT * FROM media_favorites ORDER BY RAND()\");\r\n $alreadyPlayed=\'0\';\r\n}\r\n\r\n\r\nif ($rec[\'ID\']) {\r\n\r\n // добавляем выбранную папку в историю\r\n $alreadyPlayed.=\',\'.$rec[\'ID\'];\r\n sg(\"AlreadyPlayedMusic\",$alreadyPlayed);\r\n\r\n // запускаем на проигрывание\r\n $collection=SQLSelectOne(\"SELECT * FROM collections WHERE ID=\".(int)$rec[\'COLLECTION_ID\']);\r\n $path=$collection[\'PATH\'].$rec[\'PATH\'];\r\n playMedia($path);\r\n //setTimeOut(\'VLCPlayer_update\',\"callMethod(\'VLCPlayer.update\');\",10);\r\n\r\n}', '', '2014-10-30 15:32:40'),
(245, 'script19', 0, 'getURL(\'http://localhost/popup/app_player.html?ajax=1&command=pause\',0);', '', '2016-04-05 10:54:09'),
(326, 'object19_method64', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/econommode_activate.php\');\r\n/* end injection of {SDevices} */', '', '2018-10-30 22:52:56'),
(327, 'object19_method65', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/econommode_deactivate.php\');\r\n/* end injection of {SDevices} */', '', '2018-10-30 22:53:12'),
(76, 'script20', 0, 'say(LANG_GENERAL_SETTING_UP_LIGHTS,2);\r\n// to-do', '', '2014-10-31 15:25:11'),
(174, 'object17_method73', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\n$cycles=array(\'states\'=>\'states\',\'main\'=>\'main\',\'execs\'=>\'exec\',\'scheduler\'=>\'scheduler\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>5*60) {\r\n  $red_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";\r\n }\r\n}\r\n\r\n$cycles=array(\'ping\'=>\'ping\',\'webvars\'=>\'webvars\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>10*60) {\r\n  $yellow_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";  \r\n }\r\n}\r\n\r\n$objects=array(\'MotionSensor1\'=>\'Датчик движения 1\',\'MotionSensor2\'=>\'Датчик движения 2\',\'TempSensor01\'=>\'Датчик температуры\',\'HumSensor01\'=>\'Датчик влажности\');\r\nforeach($objects as $k=>$v) {\r\n if (!gg($k.\'.alive\')) {\r\n  $yellow_state=1;\r\n  $details[]=\"Не обновляется \".$v.\'.\';  \r\n }\r\n}\r\n\r\nif ((int)gg(\'ThisComputer.SpaceProblems\')>0) {\r\n  $red_state=1;\r\n  $details[]=\"Недостаточно места на диске (\".gg(\'ThisComputer.SpaceProblems_Details\').\').\';  \r\n}\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details),2);\r\n } else {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title,2);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', '', '2016-03-24 14:08:00'),
(70, 'object16_method75', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', '', '2014-10-31 14:57:24'),
(59, 'script21', 0, '$res=\'\';\r\n if (gg(\'Security.stateColor\')==\'green\' && gg(\'System.stateColor\')==\'green\' && gg(\'Communication.stateColor\')==\'green\') {\r\n  $res=\'Все системы работают в штатном режиме\';\r\n } else {\r\n  if (gg(\'Security.stateColor\')!=\'green\') {\r\n   $res.=\" Проблема безопасности: \".getGlobal(\'Security.stateDetails\');\r\n  }\r\n  if (gg(\'System.stateColor\')!=\'green\') {\r\n   $res.=\" Системная проблема: \".getGlobal(\'System.stateDetails\');\r\n  }  \r\n  if (gg(\'Communication.stateColor\')!=\'green\') {\r\n   $res.=\" Проблема связи: \".getGlobal(\'Communication.stateDetails\');\r\n  }  \r\n }\r\n say($res,5);', '', '2014-10-30 15:31:46'),
(48, 'script1', 0, 'say(getRandomLine(\'morning\'),2);\r\n//runScript(\'readWunderTasks\');\r\nrunScript(\'readWeatherToday\');\r\nrunScript(\'reportStatus\');', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_say\" inline=\"false\" x=\"140\" y=\"51\">\r\n    <value name=\"TEXT\">\r\n      <block type=\"text\">\r\n        <title name=\"TEXT\">Good morning!</title>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"controls_if\" inline=\"false\">\r\n        <value name=\"IF0\">\r\n          <block type=\"logic_negate\" inline=\"false\">\r\n            <value name=\"BOOL\">\r\n              <block type=\"majordomo_getglobal\">\r\n                <title name=\"TEXT\">ThisComputer.WeHaveGuests</title>\r\n              </block>\r\n            </value>\r\n          </block>\r\n        </value>\r\n        <statement name=\"DO0\">\r\n          <block type=\"majordomo_runscript\" inline=\"false\">\r\n            <title name=\"TEXT\">sayTodayAgenda</title>\r\n            <next>\r\n              <block type=\"majordomo_runscript\" inline=\"false\">\r\n                <title name=\"TEXT\">playFavoriteMusic</title>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2014-09-05 12:30:58'),
(47, 'script13', 0, 'say(getRandomLine(\'evening\'),2);\r\nrunScript(\'reportStatus\');', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_say\" inline=\"false\" x=\"140\" y=\"51\">\r\n    <value name=\"TEXT\">\r\n      <block type=\"text\">\r\n        <title name=\"TEXT\">Good morning!</title>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"controls_if\" inline=\"false\">\r\n        <value name=\"IF0\">\r\n          <block type=\"logic_negate\" inline=\"false\">\r\n            <value name=\"BOOL\">\r\n              <block type=\"majordomo_getglobal\">\r\n                <title name=\"TEXT\">ThisComputer.WeHaveGuests</title>\r\n              </block>\r\n            </value>\r\n          </block>\r\n        </value>\r\n        <statement name=\"DO0\">\r\n          <block type=\"majordomo_runscript\" inline=\"false\">\r\n            <title name=\"TEXT\">sayTodayAgenda</title>\r\n            <next>\r\n              <block type=\"majordomo_runscript\" inline=\"false\">\r\n                <title name=\"TEXT\">playFavoriteMusic</title>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2014-09-05 12:30:34'),
(52, 'script12', 0, '$id=$params[\'rcswitch\'];\r\nif ($id==\'12345\') {\r\n //sensor 1\r\n}', '', '2014-10-30 15:10:27'),
(54, 'object8_method', 0, '', '', '2014-10-30 15:29:14'),
(55, 'object7_method', 0, '', '', '2014-10-30 15:29:39'),
(56, 'object6_method', 0, '', '', '2014-10-30 15:30:05'),
(57, 'object5_method', 0, '', '', '2014-10-30 15:30:17'),
(58, 'object1_method', 0, '', '', '2014-10-30 15:30:59'),
(67, 'script22', 1, 'runScript(\"reportStatus\", array());\r\n', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_script_21\" id=\"7\" inline=\"true\" x=\"148\" y=\"87\"></block>\r\n</xml>', '2014-10-30 15:35:12'),
(99, 'method62', 0, '$this->setProperty(\'status\',$params[\'status\']); // выставляем статус сенсора\r\n$this->setProperty(\'updatedTimestamp\',time()); // выставляем время срабатывания сенсора\r\n\r\n$this->setProperty(\'alive\',1);\r\n$ot=$this->object_title;\r\n$alive_timeout=(int)$this->getProperty(\"aliveTimeOut\");\r\nif (!$alive_timeout) {\r\n $alive_timeout=24*60*60;\r\n}\r\nclearTimeOut($ot.\"_alive\");\r\nsetTimeOut($ot.\"_alive\",\"sg(\'\".$ot.\".alive\',0);\",$alive_timeout);\r\n\r\nif (!isset($params[\'status\'])) {\r\n $params[\'status\']=1;\r\n}\r\n\r\nif ($params[\'status\']) {\r\n \r\n $this->setProperty(\'motionDetected\',1);\r\n clearTimeOut($this->object_title.\'_detected\'); \r\n setTimeOut($this->object_title.\'_detected\',\"setGlobal(\'\".$this->object_title.\".motionDetected\',0);\",30);\r\n\r\n $linked_room=$this->getProperty(\'LinkedRoom\');\r\n if ($linked_room!=\'\') {\r\n  callMethod($linked_room.\'.onActivity\');\r\n }\r\n\r\n ClearTimeOut(\"nobodyHome\"); \r\n SetTimeOut(\"nobodyHome\",\"callMethod(\'NobodyHomeMode.activate\');\", 1*60*60); // выполняем если целый час никого не было\r\n\r\n if (getGlobal(\'NobodyHomeMode.active\')) {\r\n  callMethod(\'NobodyHomeMode.deactivate\');\r\n }\r\n\r\n}', '', '2016-03-16 16:32:36'),
(103, 'command121', 0, '', '', '2016-03-16 16:35:36'),
(68, 'object6_method18', 0, '$h=(int)date(\'G\',time());\r\n$m=date(\'i\',time());\r\n\r\n\r\nif (isWeekDay()) {\r\n\r\n}\r\n\r\n\r\nif (($h>=8) && getGlobal(\'clockChimeEnabled\')) {\r\n if ($m==\"00\") {\r\n   say(timeNow(),1);\r\n }\r\n}\r\n\r\n\r\nsetGlobal(\'timeNow\',date(\'H:i\'));\r\n\r\n$homeStatus=date(\'H:i\');\r\nif (getGlobal(\'NobodyHomeMode.active\')) {\r\n $homeStatus.=\' Дома никого\';\r\n} else {\r\n $homeStatus.=\' Дома кто-то есть\';\r\n}\r\n\r\n$homeStatus.=\' \'.getGlobal(\'Security.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'System.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'Communication.stateDetails\');\r\nsetGlobal(\'HomeStatus\',$homeStatus);\r\n\r\n if (timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')==\"1\") {\r\n  setGlobal(\"isDark\",0);\r\n  callMethod(\'DarknessMode.deactivate\');  \r\n } elseif (!timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')!=\"1\") {\r\n  setGlobal(\"isDark\",1);\r\n  callMethod(\'DarknessMode.activate\');    \r\n }\r\n \r\n  if (timeIs(getGlobal(\'SunRiseTime\'))) {\r\n  say(\'Всходит солнце\');\r\n }\r\n if (timeIs(getGlobal(\'SunSetTime\'))) {\r\n  say(\'Солнце заходит\',2);\r\n }\r\n \r\nif (timeIs(\"23:30\") && (gg(\"EconomMode.active\")!=\"1\") && (gg(\"NobodyHomeMode.active\")==\"1\")) {\r\n say(\"Похоже никого нет сегодня, можно сэкономить немного.\");\r\n callMethod(\'EconomMode.activate\');\r\n}\r\n\r\nif (timeIs(\'20:00\')) {\r\n callMethod(\'NightMode.activate\');\r\n} elseif (timeIs(\'08:00\')) {\r\n callMethod(\'NightMode.deactivate\');\r\n}\r\n\r\nif (timeIs(\"03:00\")) {\r\n runScript(\"systemMaintenance\");\r\n}\r\n\r\nif (gg(\'ThisComputer.AlarmStatus\') && timeIs(gg(\'ThisComputer.AlarmTime\'))) {\r\n runScript(\'MorningAlarm\');\r\n}', '', '2014-10-30 15:38:26'),
(71, 'object16_method59', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SECURITY_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_SECURITY_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', '', '2014-10-31 15:02:09'),
(78, 'object18_method74', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif (!isOnline(\'Internet\')) {\r\n $yellow_state=1;\r\n $details[]=LANG_GENERAL_NO_INTERNET_ACCESS;\r\n}\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', '', '2014-10-31 15:33:53'),
(80, 'pattern8', 0, '', '', '2014-10-31 15:38:58'),
(81, 'pattern9', 0, '', '', '2014-10-31 15:39:25'),
(82, 'method61', 0, 'if ($params[\'status\']) {\r\n $this->setProperty(\'status\',$params[\'status\']);\r\n}\r\n$this->setProperty(\'updatedTimestamp\',time());\r\n\r\n$this->setProperty(\"alive\",1);\r\n$ot=$this->object_title;\r\n$alive_timeout=(int)$this->getProperty(\"aliveTimeOut\");\r\nif (!$alive_timeout) {\r\n $alive_timeout=12*60*60;\r\n}\r\nclearTimeOut($ot.\"_alive\");\r\nsetTimeOut($ot.\"_alive\",\"sg(\'\".$ot.\".alive\',0);\",$alive_timeout);', '', '2015-01-29 11:29:50'),
(312, 'command108', 0, '', '', '2018-10-30 13:10:32'),
(175, 'method72', 0, '//$params[\'t\']\r\n $this->setProperty(\"updated\",time());\r\n $this->setProperty(\"updatedTime\",date(\"H:i\",time()));\r\n $this->setProperty(\"alive\",1); \r\n \r\n$ot=$this->object_title;\r\n$alive_timeout=(int)$this->getProperty(\"aliveTimeOut\");\r\nif (!$alive_timeout) {\r\n $alive_timeout=2*60*60;\r\n}\r\nclearTimeOut($ot.\"_alive\");\r\nsetTimeOut($ot.\"_alive\",\"sg(\'\".$ot.\".alive\',0);\",$alive_timeout); \r\n\r\nif (!isset($params[\'v\'])) {\r\n return;\r\n}\r\n\r\n\r\n$old_v=$this->getProperty(\'value\');\r\n$v=round($params[\'v\'],1);\r\n\r\n$this->setProperty(\'value\',$v);\r\nif ($params[\'uptime\']) {\r\n $this->setProperty(\'uptime\',$params[\'uptime\']);\r\n}\r\n\r\nif ($v>$old_v) {\r\n $d=1;\r\n} elseif ($v<$old_v) {\r\n $d=-1;\r\n} else {\r\n $d=0;\r\n}\r\n$this->setProperty(\'direction\',$d);\r\n\r\n/*\r\n$linked_room=$this->getProperty(\"LinkedRoom\");\r\nif ($linked_room) {\r\n setGlobal($linked_room.\'.Temperature\',$v);\r\n}\r\n*/', '', '2016-03-24 14:55:40'),
(314, 'command119', 0, '', '', '2018-10-30 13:10:42'),
(315, 'command120', 0, '', '', '2018-10-30 13:10:48'),
(328, 'object20_method64', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/nobodyhomemode_activate.php\');\r\n/* end injection of {SDevices} */', '', '2018-10-30 22:53:37'),
(329, 'object20_method65', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/nobodyhomemode_deactivate.php\');\r\n/* end injection of {SDevices} */', '', '2018-10-30 22:53:47'),
(308, 'script25', 0, '$objects=array(\'Switch1\',\'Switch2\',\'Switch3\');\r\nforeach($objects as $o) {\r\n callMethod($o.\'.turnoff\');\r\n}', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_callmethod\" id=\"1\" inline=\"true\" x=\"169\" y=\"54\">\r\n    <value name=\"METHOD\">\r\n      <block type=\"text\" id=\"2\">\r\n        <field name=\"TEXT\">turnOff</field>\r\n      </block>\r\n    </value>\r\n    <value name=\"OBJECT\">\r\n      <block type=\"text\" id=\"3\">\r\n        <field name=\"TEXT\">Noo1</field>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"majordomo_callmethod\" id=\"4\" inline=\"true\">\r\n        <value name=\"METHOD\">\r\n          <block type=\"text\" id=\"5\">\r\n            <field name=\"TEXT\">turnOff</field>\r\n          </block>\r\n        </value>\r\n        <value name=\"OBJECT\">\r\n          <block type=\"text\" id=\"6\">\r\n            <field name=\"TEXT\">Noo2</field>\r\n          </block>\r\n        </value>\r\n        <next>\r\n          <block type=\"majordomo_callmethod\" id=\"7\" inline=\"true\">\r\n            <value name=\"METHOD\">\r\n              <block type=\"text\" id=\"8\">\r\n                <field name=\"TEXT\">turnOff</field>\r\n              </block>\r\n            </value>\r\n            <value name=\"OBJECT\">\r\n              <block type=\"text\" id=\"9\">\r\n                <field name=\"TEXT\">Noo3</field>\r\n              </block>\r\n            </value>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2017-03-21 15:23:07'),
(189, 'script23', 1, 'callMethod(\'EconomMode\'.\'.\'.\'deactivate\');\r\nsay(\'Здравствуйте!\', 2);\r\nrunScript(\'reportStatus\', array());\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'WebCamMotionAuto\')) {\r\n  setTimeOut(\'stopWebCamDetection\', \"  runScript(\'manageWebCamMotion\', array(\'stop\'=>\'1\'));\", (int)(\'60\'));\r\n}\r\n', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_callmethod\" id=\"1\" inline=\"true\" x=\"143\" y=\"31\">\r\n    <value name=\"METHOD\">\r\n      <block type=\"text\" id=\"2\">\r\n        <field name=\"TEXT\">deactivate</field>\r\n      </block>\r\n    </value>\r\n    <value name=\"OBJECT\">\r\n      <block type=\"text\" id=\"3\">\r\n        <field name=\"TEXT\">EconomMode</field>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"majordomo_say\" id=\"4\" inline=\"false\">\r\n        <field name=\"NUMBER\">2</field>\r\n        <value name=\"TEXT\">\r\n          <block type=\"text\" id=\"5\">\r\n            <field name=\"TEXT\">Здравствуйте!</field>\r\n          </block>\r\n        </value>\r\n        <next>\r\n          <block type=\"majordomo_script_21\" id=\"6\" inline=\"true\">\r\n            <next>\r\n              <block type=\"controls_if\" id=\"14\" inline=\"false\">\r\n                <value name=\"IF0\">\r\n                  <block type=\"majordomo_getglobal\" id=\"45\" inline=\"true\">\r\n                    <value name=\"PROPERTY\">\r\n                      <block type=\"text\" id=\"46\">\r\n                        <field name=\"TEXT\">WebCamMotionAuto</field>\r\n                      </block>\r\n                    </value>\r\n                    <value name=\"OBJECT\">\r\n                      <block type=\"text\" id=\"47\">\r\n                        <field name=\"TEXT\">ThisComputer</field>\r\n                      </block>\r\n                    </value>\r\n                  </block>\r\n                </value>\r\n                <statement name=\"DO0\">\r\n                  <block type=\"majordomo_settimeout\" id=\"65\" inline=\"true\">\r\n                    <value name=\"TIMER\">\r\n                      <block type=\"text\" id=\"66\">\r\n                        <field name=\"TEXT\">stopWebCamDetection</field>\r\n                      </block>\r\n                    </value>\r\n                    <value name=\"DELAY\">\r\n                      <block type=\"text\" id=\"67\">\r\n                        <field name=\"TEXT\">60</field>\r\n                      </block>\r\n                    </value>\r\n                    <statement name=\"DO\">\r\n                      <block type=\"majordomo_script_33\" id=\"70\" inline=\"true\">\r\n                        <value name=\"PARAMS\">\r\n                          <block type=\"majordomo_paramvalue\" id=\"115\" inline=\"true\">\r\n                            <value name=\"KEY\">\r\n                              <block type=\"text\" id=\"116\">\r\n                                <field name=\"TEXT\">stop</field>\r\n                              </block>\r\n                            </value>\r\n                            <value name=\"VALUE\">\r\n                              <block type=\"text\" id=\"117\">\r\n                                <field name=\"TEXT\">1</field>\r\n                              </block>\r\n                            </value>\r\n                          </block>\r\n                        </value>\r\n                      </block>\r\n                    </statement>\r\n                  </block>\r\n                </statement>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2016-03-29 12:24:51'),
(275, 'script24', 1, 'say(\'Включаю режим экономии\', 2);\r\ncallMethod(\'EconomMode\'.\'.\'.\'activate\');\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'WebCamMotionAuto\')) {\r\n  runScript(\'manageWebCamMotion\', array(\'start\'=>\'1\'));\r\n}\r\n', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_say\" id=\"1\" inline=\"false\" x=\"240\" y=\"80\">\r\n    <field name=\"NUMBER\">2</field>\r\n    <value name=\"TEXT\">\r\n      <block type=\"text\" id=\"2\">\r\n        <field name=\"TEXT\">Включаю режим экономии</field>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"majordomo_callmethod\" id=\"3\" inline=\"true\">\r\n        <value name=\"METHOD\">\r\n          <block type=\"text\" id=\"4\">\r\n            <field name=\"TEXT\">activate</field>\r\n          </block>\r\n        </value>\r\n        <value name=\"OBJECT\">\r\n          <block type=\"text\" id=\"5\">\r\n            <field name=\"TEXT\">EconomMode</field>\r\n          </block>\r\n        </value>\r\n        <next>\r\n          <block type=\"controls_if\" id=\"11\" inline=\"false\">\r\n            <value name=\"IF0\">\r\n              <block type=\"majordomo_getglobal\" id=\"12\" inline=\"true\">\r\n                <value name=\"PROPERTY\">\r\n                  <block type=\"text\" id=\"13\">\r\n                    <field name=\"TEXT\">WebCamMotionAuto</field>\r\n                  </block>\r\n                </value>\r\n                <value name=\"OBJECT\">\r\n                  <block type=\"text\" id=\"14\">\r\n                    <field name=\"TEXT\">ThisComputer</field>\r\n                  </block>\r\n                </value>\r\n              </block>\r\n            </value>\r\n            <statement name=\"DO0\">\r\n              <block type=\"majordomo_script_33\" id=\"15\" inline=\"true\">\r\n                <value name=\"PARAMS\">\r\n                  <block type=\"majordomo_paramvalue\" id=\"16\" inline=\"true\">\r\n                    <value name=\"KEY\">\r\n                      <block type=\"text\" id=\"17\">\r\n                        <field name=\"TEXT\">start</field>\r\n                      </block>\r\n                    </value>\r\n                    <value name=\"VALUE\">\r\n                      <block type=\"text\" id=\"18\">\r\n                        <field name=\"TEXT\">1</field>\r\n                      </block>\r\n                    </value>\r\n                  </block>\r\n                </value>\r\n              </block>\r\n            </statement>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2016-11-29 13:08:02'),
(335, 'script42', 0, 'require(ROOT.\'scripts/startup_maintenance.php\');', '', '2018-10-30 22:58:35'),
(114, 'command122', 0, '', '', '2016-03-21 14:54:40'),
(116, 'method105', 0, 'setGlobal(\"ThisComputer.co2\",200);\r\nif (gg(\'ThisComputer.co2\')>100) {\r\n say(\"Превышен уровень CO2\",2);\r\n}', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_setglobal\" id=\"51\" inline=\"true\" x=\"96\" y=\"56\">\r\n    <value name=\"PROPERTY\">\r\n      <block type=\"text\" id=\"52\">\r\n        <field name=\"TEXT\">co2</field>\r\n      </block>\r\n    </value>\r\n    <value name=\"OBJECT\">\r\n      <block type=\"text\" id=\"53\">\r\n        <field name=\"TEXT\">ThisComputer</field>\r\n      </block>\r\n    </value>\r\n    <value name=\"VALUE\">\r\n      <block type=\"text\" id=\"54\">\r\n        <field name=\"TEXT\">200</field>\r\n      </block>\r\n    </value>\r\n  </block>\r\n</xml>', '2016-03-21 14:57:52'),
(184, 'command125', 0, 'if ($params[\'VALUE\']) {\r\n runScript(\'manageWebCamService\',array(\'start\'=>1));\r\n} else {\r\n runScript(\'manageWebCamService\',array(\'stop\'=>1)); \r\n}', '', '2016-03-29 12:14:29'),
(292, 'script26', 0, 'DebMes(\"Motion detected: \".serialize($params));\r\ncallMethod(\'MotionSensorCam.motionDetected\');\r\nsetTimeOut(\'motionDetectedTimer\',\'runScript(\"camImagesProcess\");\',10);\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'WebCamMotionAuto\')) {\r\n  setTimeOut(\'stopWebCamDetection\', \"  runScript(\'manageWebCamMotion\', array(\'stop\'=>\'1\'));\", (int)(\'60\'));\r\n}', '', '2017-03-20 12:03:08'),
(179, 'script28', 0, 'if ($params[\'start\']) {\r\n safe_exec(\'cp /etc/motion/motion_enabled /etc/default/motion\');\r\n safe_exec(\'service motion start\'); \r\n}\r\nif ($params[\'stop\']) {\r\n safe_exec(\'cp /etc/motion/motion_disabled /etc/default/motion\'); \r\n safe_exec(\'service motion stop\'); \r\n}', '', '2016-03-29 12:07:29'),
(337, 'script34', 0, 'runScript(\'updateCPUId\');\r\n$res=exec(\'hostname -I\');\r\n$ipv6_regex=\'/(\\w{4})/is\';\r\n$res = trim(preg_replace($ipv6_regex,\'\',$res));\r\n$ipv6_regex=\'/:(\\w+)/is\';\r\n$res = trim(preg_replace($ipv6_regex,\'\',$res));\r\n$res = trim(str_replace(\':\',\'\',$res));\r\nsay(LANG_GENERAL_IP_ADDRESS.\" \".$res,2);', '', '2018-10-30 22:59:44'),
(139, 'object7_method27', 0, '', '', '2016-03-22 16:13:15'),
(334, 'script30', 0, '$max_usage=90; //%\r\n$output=array();\r\nexec(\'df\',$output);\r\n//var_dump($output);\r\n$problems=0;\r\n$problems_details=\'\';\r\nforeach($output as $line) {\r\n if (preg_match(\'/(\\d+)% (\\/.+)/\',$line,$m))\r\n   $proc=$m[1];\r\n   $path=$m[2];\r\n   if ($proc>$max_usage) {\r\n    $problems++;\r\n    $problems_details.=\"$path: $proc; \";\r\n   }\r\n   //echo \"$path: $proc%<br/>\";\r\n}\r\nsg(\"ThisComputer.SpaceProblems\",$problems);\r\nsg(\"ThisComputer.SpaceProblems_Details\",$problems_details);\r\n\r\nsetTimeOut(\'checkFreeSpace\',\'runScript(\"checkFreeSpace\");\',5*60);', '', '2018-10-30 22:58:17'),
(343, 'object17_method59', 0, '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\n$cycles=array(\'states\'=>\'states\',\'main\'=>\'main\',\'execs\'=>\'exec\',\'scheduler\'=>\'scheduler\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>5*60) {\r\n  $red_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";\r\n }\r\n}\r\n\r\n$cycles=array(\'ping\'=>\'ping\',\'webvars\'=>\'webvars\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>10*60) {\r\n  $yellow_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";  \r\n }\r\n}\r\n\r\nif ((int)gg(\'ThisComputer.SpaceProblems\')>0) {\r\n  $red_state=1;\r\n  $details[]=LANG_GENERAL_RUNNING_OUT_SPACE.\" (\".gg(\'ThisComputer.SpaceProblems_Details\').\').\';  \r\n}\r\n\r\n/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/system_checkstate.php\');\r\n/* end injection of {SDevices} */\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details),2);\r\n } else {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title,2);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}\r\n', '', '2018-10-30 23:12:43'),
(332, 'script32', 0, '$filename  = ROOT . \'/database_backup/db.sql\';\r\n$mysqlDumpPath = \"/usr/bin/mysqldump\";\r\n$mysqlDumpParam = \" --user=\" . DB_USER . \" --password=\" . DB_PASSWORD;\r\n$mysqlDumpParam .= \" --no-create-db --add-drop-table --databases \" . DB_NAME;\r\nif (file_exists($filename)) rename($filename, $filename . \'.prev\');\r\nexec($mysqlDumpPath . $mysqlDumpParam . \" > \" . $filename);\r\nsay(LANG_GENERAL_STARTING_REBOOT,2);\r\nsetTimeout(\"shutdownTimer\",\"safe_exec(\'shutdown -r now\');\",15);', '', '2018-10-30 22:57:42'),
(161, 'command129', 0, '', '', '2016-03-22 16:33:33'),
(316, 'command130', 0, '', '', '2018-10-30 13:14:19'),
(333, 'script31', 0, '$filename  = ROOT . \'/database_backup/db.sql\';\r\n$mysqlDumpPath = \"/usr/bin/mysqldump\";\r\n$mysqlDumpParam = \" --user=\" . DB_USER . \" --password=\" . DB_PASSWORD;\r\n$mysqlDumpParam .= \" --no-create-db --add-drop-table --databases \" . DB_NAME;\r\nif (file_exists($filename)) rename($filename, $filename . \'.prev\');\r\nexec($mysqlDumpPath . $mysqlDumpParam . \" > \" . $filename);\r\nsay(LANG_GENERAL_STARTING_SHUTDOWN,2);\r\nsetTimeout(\"shutdownTimer\",\"safe_exec(\'shutdown -h now\');\",15);', '', '2018-10-30 22:58:03'),
(317, 'command132', 0, '', '', '2018-10-30 13:14:42'),
(178, 'script8', 0, 'say(timeNow(),2);', '', '2016-03-29 12:06:55'),
(185, 'command133', 0, 'if ($params[\'VALUE\']) {\r\n runScript(\'manageWebCamMotion\',array(\'start\'=>1));\r\n} else {\r\n runScript(\'manageWebCamMotion\',array(\'stop\'=>1)); \r\n}', '', '2016-03-29 12:15:03'),
(190, 'command135', 0, '', '', '2016-03-29 12:26:51'),
(294, 'script35', 0, 'setGlobal(\'ThisComputer.tempOutside\',getGlobal(\'ow_fact.temperature\'));', '', '2017-03-20 12:59:51'),
(202, 'script36', 0, '$data=trim(exec(\"cat /proc/cpuinfo | grep Serial | cut -d \':\' -f 2\"));\r\n$data=ltrim($data,\'0\');\r\necho $data;\r\nif ($data) {\r\n setGlobal(\"ThisComputer.Serial\",$data); \r\n}', '', '2016-03-29 13:41:40'),
(338, 'script37', 0, 'echo \"OK\";', '', '2018-10-30 23:00:05'),
(283, 'object6_method15', 0, '$paths=array(\'/var/log/*.1\',\'/var/log/*.2\',\r\n             \'/var/log/*.1.*\',\r\n             \'/var/log/*.2.*\',             \r\n             \'/var/log/*.3.*\',\r\n             \'/var/log/*.4.*\',\r\n             \'/var/log/*.5.*\',\r\n             \'/var/log/*.6.*\',\r\n             \'/var/log/*.7.*\'\r\n            );\r\nforeach($paths as $p) {\r\n safe_exec(\'rm \'.$p);\r\n}\r\nrunScript(\'Hourly\');\r\nrunScript(\'filesClearOld\');', '', '2017-03-03 13:26:59'),
(321, 'command136', 0, '', '', '2018-10-30 13:18:57'),
(322, 'command137', 0, '', '', '2018-10-30 13:19:04'),
(216, 'script33', 0, 'if ($params[\'start\']) {\r\n DebMes(\"Starting web-cam motion detection\"); \r\n getURL(\'http://localhost:8080/0/detection/start\',0);\r\n}\r\nif ($params[\'stop\']) {\r\n DebMes(\"Stopping web-cam motion detection\");\r\n getURL(\'http://localhost:8080/0/detection/pause\',0);\r\n}', '', '2016-03-30 13:10:17'),
(226, 'command138', 0, 'if ($params[\'VALUE\']) {\r\n runScript(\'manageConnectService\',array(\'start\'=>1));\r\n} else {\r\n runScript(\'manageConnectService\',array(\'stop\'=>1)); \r\n}', '', '2016-04-05 10:17:38'),
(223, 'script38', 0, 'include_once(DIR_MODULES.\'connect/connect.class.php\');\r\n$cn=new connect();\r\n$cn->getConfig();\r\nif ($params[\'start\']) {\r\n  $cn->config[\'CONNECT_SYNC\']=\'1\';\r\n  $cn->saveConfig();\r\n}\r\nif ($params[\'stop\']) {\r\n $cn->config[\'CONNECT_SYNC\']=\'0\';\r\n $cn->saveConfig();\r\n}\r\necho $cn->config[\'CONNECT_SYNC\'];', '', '2016-04-05 10:13:49'),
(270, 'command140', 0, '', '', '2016-11-29 13:03:24'),
(232, 'command142', 0, '', '', '2016-04-05 10:32:50'),
(234, 'pattern10', 0, '', '', '2016-04-05 10:37:48'),
(237, 'pattern11', 0, '', '', '2016-04-05 10:38:31'),
(295, 'script40', 0, 'say(\'Температура в помещении \'.gg(\'TempSensor01.value\').\' градусов цельсия, влажность \'.gg(\'HumSensor01.value\').\' процентов.\',2);\r\nsay(\'На улице \'.gg(\'ow_fact.temperature\').\' градусов, \'.gg(\'ow_fact.weather_type\').\', ветер \'.gg(\'ow_fact.wind_speed\').\' метров в секунду, влажность \'.gg(\'ow_fact.humidity\').\' процентов.\',2);', '', '2017-03-20 13:00:18'),
(254, 'script41', 0, 'getURL(\'http://localhost/popup/app_101ru.html?ajax=1&op=playstation&id=31\', 0);', '', '2016-04-05 11:13:56'),
(248, 'command143', 0, '', '', '2016-04-05 10:58:42'),
(261, 'command144', 0, '', '', '2016-04-05 11:46:34'),
(250, 'command145', 0, '', '', '2016-04-05 11:04:49'),
(251, 'command146', 0, '', '', '2016-04-05 11:05:26');
INSERT INTO `blockly_code` (`ID`, `SYSTEM_NAME`, `CODE_TYPE`, `CODE`, `XML`, `UPDATED`) VALUES
(260, 'script39', 1, 'eval(\'set_time_limit(0);\');\r\nsay(\'Здравствуйте, меня зовут Алиса.\', 2);\r\neval(\'sleep(5);\');\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'DemoWeather\')) {\r\n  say(\'Я знаю какая погода.\', 2);\r\n  runScript(\'tellWeather\', array());\r\n  eval(\'sleep(18);\');\r\n}\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'DemoMusic\')) {\r\n  say(\'Могу включать музыку\', 2);\r\n  eval(\'sleep(8);\');\r\n  runScript(\'playRadio\', array());\r\n  eval(\'sleep(15);\');\r\n  runScript(\'playPause\', array());\r\n}\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'DemoPower\')) {\r\n  say(\'Так же я могу управлять электро-приборами.\', 2);\r\n  eval(\'sleep(10);\');\r\n  callMethod(\'noo1\'.\'.\'.\'switch\');\r\n  eval(\'sleep(2);\');\r\n  callMethod(\'noo1\'.\'.\'.\'switch\');\r\n  eval(\'sleep(1);\');\r\n  callMethod(\'noo2\'.\'.\'.\'switch\');\r\n  eval(\'sleep(2);\');\r\n  callMethod(\'noo2\'.\'.\'.\'switch\');\r\n  eval(\'sleep(1);\');\r\n  callMethod(\'noo3\'.\'.\'.\'switch\');\r\n  eval(\'sleep(2);\');\r\n  callMethod(\'noo3\'.\'.\'.\'switch\');\r\n  eval(\'sleep(1);\');\r\n}\r\nif (getGlobal(\'ThisComputer\'.\'.\'.\'DemoAsk\')) {\r\n  say(\'Ещё я умею отвечать на вопросы что такое и кто такой\', 2);\r\n  eval(\'sleep(8);\');\r\n}\r\n', '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <block type=\"majordomo_phpcode\" id=\"1\" inline=\"false\" x=\"154\" y=\"119\">\r\n    <value name=\"TEXT\">\r\n      <block type=\"text\" id=\"2\">\r\n        <field name=\"TEXT\">set_time_limit(0);</field>\r\n      </block>\r\n    </value>\r\n    <next>\r\n      <block type=\"majordomo_say\" id=\"3\" inline=\"false\">\r\n        <field name=\"NUMBER\">2</field>\r\n        <value name=\"TEXT\">\r\n          <block type=\"text\" id=\"4\">\r\n            <field name=\"TEXT\">Здравствуйте, меня зовут Алиса.</field>\r\n          </block>\r\n        </value>\r\n        <next>\r\n          <block type=\"majordomo_phpcode\" id=\"5\" inline=\"false\">\r\n            <value name=\"TEXT\">\r\n              <block type=\"text\" id=\"6\">\r\n                <field name=\"TEXT\">sleep(5);</field>\r\n              </block>\r\n            </value>\r\n            <next>\r\n              <block type=\"controls_if\" id=\"7\" inline=\"false\">\r\n                <value name=\"IF0\">\r\n                  <block type=\"majordomo_getglobal\" id=\"8\" inline=\"true\">\r\n                    <value name=\"PROPERTY\">\r\n                      <block type=\"text\" id=\"9\">\r\n                        <field name=\"TEXT\">DemoWeather</field>\r\n                      </block>\r\n                    </value>\r\n                    <value name=\"OBJECT\">\r\n                      <block type=\"text\" id=\"10\">\r\n                        <field name=\"TEXT\">ThisComputer</field>\r\n                      </block>\r\n                    </value>\r\n                  </block>\r\n                </value>\r\n                <statement name=\"DO0\">\r\n                  <block type=\"majordomo_say\" id=\"11\" inline=\"false\">\r\n                    <field name=\"NUMBER\">2</field>\r\n                    <value name=\"TEXT\">\r\n                      <block type=\"text\" id=\"12\">\r\n                        <field name=\"TEXT\">Я знаю какая погода.</field>\r\n                      </block>\r\n                    </value>\r\n                    <next>\r\n                      <block type=\"majordomo_script_40\" id=\"13\" inline=\"true\">\r\n                        <next>\r\n                          <block type=\"majordomo_phpcode\" id=\"14\" inline=\"false\">\r\n                            <value name=\"TEXT\">\r\n                              <block type=\"text\" id=\"15\">\r\n                                <field name=\"TEXT\">sleep(18);</field>\r\n                              </block>\r\n                            </value>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </statement>\r\n                <next>\r\n                  <block type=\"controls_if\" id=\"16\" inline=\"false\">\r\n                    <value name=\"IF0\">\r\n                      <block type=\"majordomo_getglobal\" id=\"17\" inline=\"true\">\r\n                        <value name=\"PROPERTY\">\r\n                          <block type=\"text\" id=\"18\">\r\n                            <field name=\"TEXT\">DemoMusic</field>\r\n                          </block>\r\n                        </value>\r\n                        <value name=\"OBJECT\">\r\n                          <block type=\"text\" id=\"19\">\r\n                            <field name=\"TEXT\">ThisComputer</field>\r\n                          </block>\r\n                        </value>\r\n                      </block>\r\n                    </value>\r\n                    <statement name=\"DO0\">\r\n                      <block type=\"majordomo_say\" id=\"20\" inline=\"false\">\r\n                        <field name=\"NUMBER\">2</field>\r\n                        <value name=\"TEXT\">\r\n                          <block type=\"text\" id=\"21\">\r\n                            <field name=\"TEXT\">Могу включать музыку</field>\r\n                          </block>\r\n                        </value>\r\n                        <next>\r\n                          <block type=\"majordomo_phpcode\" id=\"22\" inline=\"false\">\r\n                            <value name=\"TEXT\">\r\n                              <block type=\"text\" id=\"23\">\r\n                                <field name=\"TEXT\">sleep(8);</field>\r\n                              </block>\r\n                            </value>\r\n                            <next>\r\n                              <block type=\"majordomo_script_41\" id=\"24\" inline=\"true\">\r\n                                <next>\r\n                                  <block type=\"majordomo_phpcode\" id=\"25\" inline=\"false\">\r\n                                    <value name=\"TEXT\">\r\n                                      <block type=\"text\" id=\"26\">\r\n                                        <field name=\"TEXT\">sleep(15);</field>\r\n                                      </block>\r\n                                    </value>\r\n                                    <next>\r\n                                      <block type=\"majordomo_script_19\" id=\"27\" inline=\"true\"></block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </statement>\r\n                    <next>\r\n                      <block type=\"controls_if\" id=\"28\" inline=\"false\">\r\n                        <value name=\"IF0\">\r\n                          <block type=\"majordomo_getglobal\" id=\"29\" inline=\"true\">\r\n                            <value name=\"PROPERTY\">\r\n                              <block type=\"text\" id=\"30\">\r\n                                <field name=\"TEXT\">DemoPower</field>\r\n                              </block>\r\n                            </value>\r\n                            <value name=\"OBJECT\">\r\n                              <block type=\"text\" id=\"31\">\r\n                                <field name=\"TEXT\">ThisComputer</field>\r\n                              </block>\r\n                            </value>\r\n                          </block>\r\n                        </value>\r\n                        <statement name=\"DO0\">\r\n                          <block type=\"majordomo_say\" id=\"32\" inline=\"false\">\r\n                            <field name=\"NUMBER\">2</field>\r\n                            <value name=\"TEXT\">\r\n                              <block type=\"text\" id=\"33\">\r\n                                <field name=\"TEXT\">Так же я могу управлять электро-приборами.</field>\r\n                              </block>\r\n                            </value>\r\n                            <next>\r\n                              <block type=\"majordomo_phpcode\" id=\"34\" inline=\"false\">\r\n                                <value name=\"TEXT\">\r\n                                  <block type=\"text\" id=\"35\">\r\n                                    <field name=\"TEXT\">sleep(10);</field>\r\n                                  </block>\r\n                                </value>\r\n                                <next>\r\n                                  <block type=\"majordomo_callmethod\" id=\"36\" inline=\"true\">\r\n                                    <value name=\"METHOD\">\r\n                                      <block type=\"text\" id=\"37\">\r\n                                        <field name=\"TEXT\">switch</field>\r\n                                      </block>\r\n                                    </value>\r\n                                    <value name=\"OBJECT\">\r\n                                      <block type=\"text\" id=\"38\">\r\n                                        <field name=\"TEXT\">noo1</field>\r\n                                      </block>\r\n                                    </value>\r\n                                    <next>\r\n                                      <block type=\"majordomo_phpcode\" id=\"39\" inline=\"false\">\r\n                                        <value name=\"TEXT\">\r\n                                          <block type=\"text\" id=\"40\">\r\n                                            <field name=\"TEXT\">sleep(2);</field>\r\n                                          </block>\r\n                                        </value>\r\n                                        <next>\r\n                                          <block type=\"majordomo_callmethod\" id=\"41\" inline=\"true\">\r\n                                            <value name=\"METHOD\">\r\n                                              <block type=\"text\" id=\"42\">\r\n                                                <field name=\"TEXT\">switch</field>\r\n                                              </block>\r\n                                            </value>\r\n                                            <value name=\"OBJECT\">\r\n                                              <block type=\"text\" id=\"43\">\r\n                                                <field name=\"TEXT\">noo1</field>\r\n                                              </block>\r\n                                            </value>\r\n                                            <next>\r\n                                              <block type=\"majordomo_phpcode\" id=\"68\" inline=\"false\">\r\n                                                <value name=\"TEXT\">\r\n                                                  <block type=\"text\" id=\"69\">\r\n                                                    <field name=\"TEXT\">sleep(1);</field>\r\n                                                  </block>\r\n                                                </value>\r\n                                                <next>\r\n                                                  <block type=\"majordomo_callmethod\" id=\"44\" inline=\"true\">\r\n                                                    <value name=\"METHOD\">\r\n                                                      <block type=\"text\" id=\"45\">\r\n                                                        <field name=\"TEXT\">switch</field>\r\n                                                      </block>\r\n                                                    </value>\r\n                                                    <value name=\"OBJECT\">\r\n                                                      <block type=\"text\" id=\"46\">\r\n                                                        <field name=\"TEXT\">noo2</field>\r\n                                                      </block>\r\n                                                    </value>\r\n                                                    <next>\r\n                                                      <block type=\"majordomo_phpcode\" id=\"47\" inline=\"false\">\r\n                                                        <value name=\"TEXT\">\r\n                                                          <block type=\"text\" id=\"48\">\r\n                                                            <field name=\"TEXT\">sleep(2);</field>\r\n                                                          </block>\r\n                                                        </value>\r\n                                                        <next>\r\n                                                          <block type=\"majordomo_callmethod\" id=\"49\" inline=\"true\">\r\n                                                            <value name=\"METHOD\">\r\n                                                              <block type=\"text\" id=\"50\">\r\n                                                                <field name=\"TEXT\">switch</field>\r\n                                                              </block>\r\n                                                            </value>\r\n                                                            <value name=\"OBJECT\">\r\n                                                              <block type=\"text\" id=\"51\">\r\n                                                                <field name=\"TEXT\">noo2</field>\r\n                                                              </block>\r\n                                                            </value>\r\n                                                            <next>\r\n                                                              <block type=\"majordomo_phpcode\" id=\"70\" inline=\"false\">\r\n                                                                <value name=\"TEXT\">\r\n                                                                  <block type=\"text\" id=\"71\">\r\n                                                                    <field name=\"TEXT\">sleep(1);</field>\r\n                                                                  </block>\r\n                                                                </value>\r\n                                                                <next>\r\n                                                                  <block type=\"majordomo_callmethod\" id=\"52\" inline=\"true\">\r\n                                                                    <value name=\"METHOD\">\r\n                                                                      <block type=\"text\" id=\"53\">\r\n                                                                        <field name=\"TEXT\">switch</field>\r\n                                                                      </block>\r\n                                                                    </value>\r\n                                                                    <value name=\"OBJECT\">\r\n                                                                      <block type=\"text\" id=\"54\">\r\n                                                                        <field name=\"TEXT\">noo3</field>\r\n                                                                      </block>\r\n                                                                    </value>\r\n                                                                    <next>\r\n                                                                      <block type=\"majordomo_phpcode\" id=\"55\" inline=\"false\">\r\n                                                                        <value name=\"TEXT\">\r\n                                                                          <block type=\"text\" id=\"56\">\r\n                                                                            <field name=\"TEXT\">sleep(2);</field>\r\n                                                                          </block>\r\n                                                                        </value>\r\n                                                                        <next>\r\n                                                                          <block type=\"majordomo_callmethod\" id=\"57\" inline=\"true\">\r\n                                                                            <value name=\"METHOD\">\r\n                                                                              <block type=\"text\" id=\"58\">\r\n                                                                                <field name=\"TEXT\">switch</field>\r\n                                                                              </block>\r\n                                                                            </value>\r\n                                                                            <value name=\"OBJECT\">\r\n                                                                              <block type=\"text\" id=\"59\">\r\n                                                                                <field name=\"TEXT\">noo3</field>\r\n                                                                              </block>\r\n                                                                            </value>\r\n                                                                            <next>\r\n                                                                              <block type=\"majordomo_phpcode\" id=\"72\" inline=\"false\">\r\n                                                                                <value name=\"TEXT\">\r\n                                                                                  <block type=\"text\" id=\"73\">\r\n                                                                                    <field name=\"TEXT\">sleep(1);</field>\r\n                                                                                  </block>\r\n                                                                                </value>\r\n                                                                              </block>\r\n                                                                            </next>\r\n                                                                          </block>\r\n                                                                        </next>\r\n                                                                      </block>\r\n                                                                    </next>\r\n                                                                  </block>\r\n                                                                </next>\r\n                                                              </block>\r\n                                                            </next>\r\n                                                          </block>\r\n                                                        </next>\r\n                                                      </block>\r\n                                                    </next>\r\n                                                  </block>\r\n                                                </next>\r\n                                              </block>\r\n                                            </next>\r\n                                          </block>\r\n                                        </next>\r\n                                      </block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </statement>\r\n                        <next>\r\n                          <block type=\"controls_if\" id=\"60\" inline=\"false\">\r\n                            <value name=\"IF0\">\r\n                              <block type=\"majordomo_getglobal\" id=\"61\" inline=\"true\">\r\n                                <value name=\"PROPERTY\">\r\n                                  <block type=\"text\" id=\"62\">\r\n                                    <field name=\"TEXT\">DemoAsk</field>\r\n                                  </block>\r\n                                </value>\r\n                                <value name=\"OBJECT\">\r\n                                  <block type=\"text\" id=\"63\">\r\n                                    <field name=\"TEXT\">ThisComputer</field>\r\n                                  </block>\r\n                                </value>\r\n                              </block>\r\n                            </value>\r\n                            <statement name=\"DO0\">\r\n                              <block type=\"majordomo_say\" id=\"64\" inline=\"false\">\r\n                                <field name=\"NUMBER\">2</field>\r\n                                <value name=\"TEXT\">\r\n                                  <block type=\"text\" id=\"65\">\r\n                                    <field name=\"TEXT\">Ещё я умею отвечать на вопросы что такое и кто такой</field>\r\n                                  </block>\r\n                                </value>\r\n                                <next>\r\n                                  <block type=\"majordomo_phpcode\" id=\"66\" inline=\"false\">\r\n                                    <value name=\"TEXT\">\r\n                                      <block type=\"text\" id=\"67\">\r\n                                        <field name=\"TEXT\">sleep(8);</field>\r\n                                      </block>\r\n                                    </value>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </statement>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>\r\n</xml>', '2016-04-05 11:43:13'),
(264, 'method77', 0, '$this->setProperty(\'volumeLevel\',$params[\'VALUE\']);\r\nif (IsWindowsOs()) {\r\n $volume=round(65535*$params[\'VALUE\']/100); \r\n safe_exec(\'..\\\\apps\\\\nircmd\\\\nircmdc setsysvolume \'.$volume); \r\n} else {\r\n safe_exec(\'amixer  sset PCM,0 \'.$params[\'VALUE\'].\'%\');\r\n}\r\nsay(\"Изменилась громкость до \".$params[\'VALUE\'].\" процентов\");', '', '2016-09-14 18:31:13'),
(265, 'object7_method29', 0, '$command=$params[\'command\'];\r\n\r\n$short_command=\'\';\r\n$dt=recognizeTime($command,$short_command);\r\n\r\nif (preg_match(\'/скажи сколько врем/uis\',$command)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\',2);\r\n  return;\r\n }\r\n global $voicemode;\r\n $voicemode=\'on\';\r\n say(\'Сейчас \'.timeNow(),2);\r\n} elseif (preg_match(\'/сколько время/uis\',$command)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\');\r\n  echo $short_command;\r\n  return;\r\n }\r\n say(\'Сейчас \'.timeNow());\r\n} elseif (preg_match(\'/повтори (.+)/uis\',$command,$m) || preg_match(\'/скажи (.+)/uis\',$command,$m)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\',2);\r\n  return;\r\n }\r\n global $voicemode;\r\n $voicemode=\'on\';\r\n say($m[1],2);\r\n} else {\r\n say(\'Неизвестная команда...\',2);\r\n}', '', '2016-11-16 18:30:31'),
(345, 'object6_method14', 0, '$h=(int)date(\'G\',time());\r\n$m=date(\'i\',time());\r\n\r\n\r\nif (isWeekDay()) {\r\n}\r\n\r\nsg(\'ThisComputer.DayOfMonthNum\',date(\'d\'));\r\nsg(\'ThisComputer.DayOfWeekTXT\',date(\'l\'));\r\nsg(\'ThisComputer.MonthTXTalt\',date(\'F\'));\r\n\r\nif (timeBetween(getGlobal(\'NightModeEnd\'),getGlobal(\'NightModeStart\')) && getGlobal(\'clockChimeEnabled\')) {\r\n if ($m==\"00\") {\r\n   say(timeNow(),1);\r\n }\r\n}\r\n\r\n\r\nsetGlobal(\'timeNow\',date(\'H:i\'));\r\n\r\n$homeStatus=date(\'H:i\');\r\nif (getGlobal(\'NobodyHomeMode.active\')) {\r\n $homeStatus.=\' \'.LANG_DEVICES_ROOMS_NOBODYHOME;\r\n} else {\r\n $homeStatus.=\' \'.LANG_DEVICES_ROOMS_SOMEBODYHOME;\r\n}\r\n\r\n$homeStatus.=\' \'.getGlobal(\'Security.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'System.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'Communication.stateDetails\');\r\nsetGlobal(\'HomeStatus\',$homeStatus);\r\n\r\n if (timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')==\"1\") {\r\n  setGlobal(\"isDark\",0);\r\n  callMethod(\'DarknessMode.deactivate\');  \r\n } elseif (!timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')!=\"1\") {\r\n  setGlobal(\"isDark\",1);\r\n  callMethod(\'DarknessMode.activate\');    \r\n }\r\n \r\nif (timeIs(\"23:30\") && (gg(\"EconomMode.active\")!=\"1\") && (gg(\"NobodyHomeMode.active\")==\"1\")) {\r\n callMethod(\'EconomMode.activate\');\r\n}\r\n\r\nif (timeIs(gg(\'NightModeStart\'))) {\r\n callMethod(\'NightMode.activate\');\r\n} elseif (timeIs(gg(\'NightModeEnd\'))) {\r\n callMethod(\'NightMode.deactivate\');\r\n}\r\n\r\nif (timeIs(\"03:00\")) {\r\n runScript(\"systemMaintenance\");\r\n}\r\n\r\nif (gg(\'ThisComputer.AlarmStatus\') && timeIs(gg(\'ThisComputer.AlarmTime\'))) {\r\n runScript(\'MorningAlarm\');\r\n}', '', '2018-10-30 23:15:02'),
(280, 'command152', 0, '', '', '2016-11-30 12:19:28'),
(301, 'command153', 0, '', '', '2017-03-20 13:12:14'),
(285, 'script43', 0, 'keepLatestLimitedBySize(\'/var/www/media/webcam\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/media/webcam_sorted\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/backup\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/cached\',50*1024*1024); //50Mb', '', '2017-03-03 13:27:49'),
(287, 'script27', 0, '$src=\'/var/www/media/webcam\'; // откуда брать фотографии\r\nclearTimeout(\'camImagesTimer\');\r\n$base_path=\'/var/www/dvr/unsorted\';\r\n$dst=\'/var/www/dvr/sorted\';\r\n\r\nsafe_exec(\'chown pi:pi -Rf \'.$base_path.\'/*\');\r\nsafe_exec(\'chmod 0777 -f \'.$base_path.\'/*\');\r\nsetTimeout(\'camImagesTimer\',\'runScript(\"camImagesProcess\");\',10*60);\r\n\r\nif (is_dir($base_path)) {\r\n if ($dir = @opendir($base_path)) { \r\n  while (($file = readdir($dir)) !== false) { \r\n    if ($file!=\'.\' && $file!=\'..\' && is_dir($base_path.\'/\'.$file)) {\r\n		$src=$base_path.\'/\'.$file;\r\n     	echo $src.\'<br/>\';\r\n     	processLine($src.\" -> \".$dst.\"/%Y/%m - %F/%d/\".$file);\r\n    }\r\n  }   \r\n  closedir($dir); \r\n } \r\n} else {\r\n echo \"Cannot open $base_path\";\r\n}\r\n\r\nprocessLine(\"CLEAR \".$dst.\" 30 DAYS OLD\");\r\n', '', '2017-03-03 14:40:21'),
(290, 'method122', 0, 'require(DIR_MODULES.\'devices/processHomebridgeMQTT.inc.php\');', '', '2017-03-06 17:17:13'),
(289, 'object108_method122', 0, 'require(DIR_MODULES.\'devices/processHomebridgeMQTT.php\');', '', '2017-03-06 16:52:15'),
(291, 'object109_method111', 0, 'say(\"Кнопка 1\",2);', '', '2017-03-09 12:23:35'),
(311, 'method15', 0, '', '', '2018-07-05 09:44:53'),
(297, 'command155', 0, '', '', '2017-03-20 13:05:08'),
(350, 'object23_method65', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/darknessmode_deactivate.php\');\r\n/* end injection of {SDevices} */', '', '2019-09-10 00:16:09'),
(302, 'command157', 0, '', '', '2017-03-20 13:14:08'),
(318, 'command99', 0, '', '', '2018-10-30 13:17:47'),
(325, 'method63', 0, '$this->setProperty(\"updated\",time());\r\n$this->setProperty(\"updatedTime\",date(\'H:i\'));\r\nif ($this->getProperty(\'active\')) {\r\n say(processTitle($this->getProperty(\'title\')).\" \".LANG_GENERAL_ACTIVATED.\".\");\r\n} else {\r\n say(processTitle($this->getProperty(\'title\')).\" \".LANG_GENERAL_DEACTIVATED.\".\");\r\n}', '', '2018-10-30 22:51:57'),
(349, 'object23_method64', 0, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/darknessmode_activate.php\');\r\n/* end injection of {SDevices} */', '', '2019-09-10 00:15:53'),
(356, 'script29', 1, 'runScript(\'tellIPAddress\', array());\r\n', '<xml xmlns=\"https://developers.google.com/blockly/xml\">\r\n  <block type=\"majordomo_script_34\" id=\"3\" x=\"135\" y=\"60\"/>\r\n</xml>', '2019-09-10 09:57:56'),
(361, 'webvar5', 0, '', '', '2021-05-04 21:47:35'),
(362, 'webvar6', 0, '', '', '2021-05-04 21:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `cached_cycles`
--

DROP TABLE IF EXISTS `cached_cycles`;
CREATE TABLE IF NOT EXISTS `cached_cycles` (
  `TITLE` char(100) NOT NULL,
  `VALUE` char(255) NOT NULL,
  PRIMARY KEY (`TITLE`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cached_cycles`
--

INSERT INTO `cached_cycles` (`TITLE`, `VALUE`) VALUES
('cycle_schedulerRun', '1672163224'),
('cycle_execsRun', '1672163215'),
('cycle_wscacheRun', '1672163227'),
('cycle_schedappRun', '1672163229'),
('cycle_phistoryRun', '1672163225'),
('cycle_webvarsRun', '1672163219'),
('cycle_mqttRun', '1672163228'),
('cycle_pingRun', '1672163219'),
('cycle_connectRun', ''),
('cycle_mainRun', '1672163227'),
('cycle_websocketsRun', '1672163227'),
('cycle_statesRun', '1672163219');

-- --------------------------------------------------------

--
-- Table structure for table `cached_values`
--

DROP TABLE IF EXISTS `cached_values`;
CREATE TABLE IF NOT EXISTS `cached_values` (
  `KEYWORD` char(100) NOT NULL,
  `DATAVALUE` char(255) NOT NULL,
  PRIMARY KEY (`KEYWORD`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cached_values`
--

INSERT INTO `cached_values` (`KEYWORD`, `DATAVALUE`) VALUES
('mjd:thiscomputer.serial', ''),
('p:10.7.started_time', '150'),
('mjd:thiscomputer.started_time', '1672163155'),
('mjd:thiscomputer.lastsaytime', '1672163160'),
('mjd:thiscomputer.lastsaymessage', 'Тёмное время суток деактивировано.'),
('p:10.7.lastsaytime', '148'),
('p:10.7.lastsaymessage', '268'),
('mjd:thiscomputer.minmsglevel', '1'),
('p:10.7.uptime', '149'),
('mjd:thiscomputer.uptime', '72'),
('p:10.7.uptimetext', '4422'),
('mjd:thiscomputer.uptimetext', '1m'),
('mjd:thiscomputer.wsclientstotal', '1'),
('mjd:thiscomputer.phistory_queue_problem', ''),
('mjd:thiscomputer.timenow', '19:47'),
('mjd:thiscomputer.monthtxtalt', 'December'),
('mjd:thiscomputer.dayofmonthnum', '27'),
('mjd:thiscomputer.dayofweektxt', 'Tuesday'),
('mjd:security.statecolor', 'green'),
('mjd:system.statecolor', 'green'),
('mjd:communication.statecolor', 'green'),
('mjd:nobodyhomemode.active', '0'),
('mjd:econommode.active', '0'),
('mjd:nightmode.active', '0'),
('mjd:darknessmode.active', '0'),
('mjd:tempsensor01.value', '20.8'),
('mjd:switch1.status', '0'),
('mjd:switch2.status', '0'),
('mjd:switch3.status', '0'),
('mjd:humsensor01.value', '36'),
('p:55.108.mode', '416'),
('mjd:homebridge.mode', ''),
('p:7.6.time', '12'),
('mjd:clockchime.time', '2022-12-27 19:47:00'),
('p:10.7.dayofmonthnum', '2204'),
('p:10.7.dayofweektxt', '2205'),
('p:10.7.monthtxtalt', '2206'),
('mjd:thiscomputer.nightmodeend', '08:00'),
('mjd:thiscomputer.nightmodestart', '20:00'),
('mjd:thiscomputer.clockchimeenabled', '1'),
('p:10.7.timenow', '101'),
('p:21.16.statedetails', '41'),
('mjd:security.statedetails', ''),
('mjd:system.statedetails', ''),
('mjd:communication.statedetails', ''),
('p:10.7.homestatus', '102'),
('mjd:thiscomputer.homestatus', '19:47 Кто-то есть'),
('mjd:thiscomputer.sunrisetime', '04:11'),
('mjd:thiscomputer.sunsettime', '20:40'),
('mjd:thiscomputer.isdark', '0'),
('p:10.7.isdark', '103'),
('p:24.23.active', '55'),
('p:24.23.updated', '57'),
('mjd:darknessmode.updated', '1672163160'),
('p:24.23.updatedtime', '58'),
('mjd:darknessmode.updatedtime', '19:46'),
('mjd:darknessmode.title', '<#LANG_GENERAL_DARKNESS_MODE#>'),
('mjd:thiscomputer.alarmstatus', ''),
('mjd:thiscomputer.somebodyhometext', 'Кто-то есть..'),
('mjd:thiscomputer.spaceproblems', '0'),
('mjd:motionsensor1.alive', '1'),
('p:43.51.batterywarning', '6007'),
('mjd:motionsensor1.batterywarning', ''),
('p:41.74.alivetimeout', '447'),
('mjd:switch1.alivetimeout', ''),
('p:41.74.batterywarning', '6007'),
('mjd:switch1.batterywarning', ''),
('p:41.75.alivetimeout', '447'),
('mjd:switch2.alivetimeout', ''),
('p:41.75.batterywarning', '6007'),
('mjd:switch2.batterywarning', ''),
('p:41.76.alivetimeout', '447'),
('mjd:switch3.alivetimeout', ''),
('p:41.76.batterywarning', '6007'),
('mjd:switch3.batterywarning', ''),
('mjd:humsensor01.alive', '1'),
('p:48.80.batterywarning', '6007'),
('mjd:humsensor01.batterywarning', ''),
('mjd:tempsensor01.alive', '1'),
('p:47.79.batterywarning', '6007'),
('mjd:tempsensor01.batterywarning', ''),
('mjd:thiscomputer.hideleftpaneladmin', '1'),
('mjd:thiscomputer.latestupdateid', 'b8d03ab6e22461678b85e1df66a02325b04e6ff9'),
('mjd:thiscomputer.latestupdatetimestamp', '25.08.2022 14:09:43'),
('mjd:thiscomputer.cycle_schedulerdisabled', ''),
('mjd:thiscomputer.cycle_schedulercontrol', ''),
('mjd:thiscomputer.cycle_wscachedisabled', ''),
('mjd:thiscomputer.cycle_wscachecontrol', ''),
('mjd:thiscomputer.cycle_execsdisabled', ''),
('mjd:thiscomputer.cycle_execscontrol', ''),
('mjd:thiscomputer.cycle_schedappdisabled', ''),
('mjd:thiscomputer.cycle_schedappcontrol', ''),
('mjd:thiscomputer.cycle_mqttdisabled', ''),
('mjd:thiscomputer.cycle_mqttcontrol', ''),
('mjd:thiscomputer.cycle_webvarsdisabled', ''),
('mjd:thiscomputer.cycle_webvarscontrol', ''),
('mjd:thiscomputer.cycle_phistorydisabled', ''),
('mjd:thiscomputer.cycle_phistorycontrol', ''),
('mjd:thiscomputer.cycle_websocketsdisabled', ''),
('mjd:thiscomputer.cycle_websocketscontrol', ''),
('mjd:thiscomputer.cycle_pingdisabled', ''),
('mjd:thiscomputer.cycle_pingcontrol', ''),
('mjd:thiscomputer.cycle_maindisabled', ''),
('mjd:thiscomputer.cycle_maincontrol', ''),
('mjd:thiscomputer.cycle_connectdisabled', ''),
('mjd:thiscomputer.cycle_connectcontrol', ''),
('mjd:thiscomputer.cycle_statesdisabled', ''),
('mjd:thiscomputer.cycle_statescontrol', ''),
('p:10.7.serial', '259'),
('mjd:thiscomputer.cycle_statesrun', '1987523196'),
('mjd:thiscomputer.cycle_mainrun', '1987523196'),
('mjd:thiscomputer.cycle_execsrun', '1987523196'),
('mjd:thiscomputer.cycle_schedulerrun', '1987523196'),
('mjd:thiscomputer.cycle_pingrun', '1987523196'),
('mjd:thiscomputer.cycle_webvarsrun', '1987523196');

-- --------------------------------------------------------

--
-- Table structure for table `cached_ws`
--

DROP TABLE IF EXISTS `cached_ws`;
CREATE TABLE IF NOT EXISTS `cached_ws` (
  `PROPERTY` char(100) NOT NULL,
  `DATAVALUE` varchar(20000) NOT NULL,
  `POST_ACTION` char(100) NOT NULL,
  `ADDED` datetime NOT NULL,
  PRIMARY KEY (`PROPERTY`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_categories`
--

DROP TABLE IF EXISTS `calendar_categories`;
CREATE TABLE IF NOT EXISTS `calendar_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `ACTIVE` int(255) NOT NULL DEFAULT 0,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `ICON` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `NOTES` text DEFAULT NULL,
  `DUE` date DEFAULT NULL,
  `ADDED` datetime DEFAULT NULL,
  `DONE_WHEN` datetime DEFAULT NULL,
  `IS_TASK` int(3) NOT NULL DEFAULT 0,
  `IS_DONE` int(3) NOT NULL DEFAULT 0,
  `IS_NODATE` int(3) NOT NULL DEFAULT 0,
  `IS_REPEATING` int(3) NOT NULL DEFAULT 0,
  `REPEAT_TYPE` int(3) NOT NULL DEFAULT 0,
  `WEEK_DAYS` varchar(255) NOT NULL DEFAULT '',
  `IS_REPEATING_AFTER` int(3) NOT NULL DEFAULT 0,
  `REPEAT_IN` int(10) NOT NULL DEFAULT 0,
  `USER_ID` int(10) NOT NULL DEFAULT 0,
  `LOCATION_ID` int(10) NOT NULL DEFAULT 0,
  `CALENDAR_CATEGORY_ID` int(10) NOT NULL DEFAULT 0,
  `DONE_SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `DONE_CODE` text DEFAULT NULL,
  `LOG` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `SUBTITLE` varchar(255) NOT NULL DEFAULT '',
  `TYPE` varchar(255) NOT NULL DEFAULT '',
  `HISTORY_DEPTH` int(10) NOT NULL DEFAULT 0,
  `HISTORY_TYPE` int(3) NOT NULL DEFAULT 1,
  `THEME` varchar(255) NOT NULL DEFAULT '',
  `HIGHCHARTS_SETUP` text DEFAULT NULL,
  `HIGHCHARTS_CONFIG` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`ID`, `TITLE`, `SUBTITLE`, `TYPE`, `HISTORY_DEPTH`, `HISTORY_TYPE`, `THEME`, `HIGHCHARTS_SETUP`, `HIGHCHARTS_CONFIG`) VALUES
(1, '<#LANG_GENERAL_TEMPERATURE_OUTSIDE#>', '', '', 7, 1, '', NULL, '{\"chart\":{\"renderTo\":\"container_chart_81862\",\"type\":\"area\",\"zoomType\":\"x\",\"events\":{}},\"accessibility\":{\"enabled\":false},\"title\":{\"text\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0437\\u0430 \\u043e\\u043a\\u043d\\u043e\\u043c\"},\"xAxis\":{\"type\":\"datetime\",\"dateTimeLabelFormats\":{\"month\":\"%e. %b\",\"year\":\"%b\"},\"crosshair\":true,\"events\":{}},\"yAxis\":[{\"labels\":{\"format\":\"{value} C\",\"style\":{\"color\":\"#7cb5ec\"}},\"title\":{\"text\":\"\",\"style\":{\"color\":\"#7cb5ec\"}},\"index\":0}],\"plotOptions\":{\"spline\":{\"marker\":{\"enabled\":true}},\"area\":{},\"series\":{\"fillOpacity\":0.25}},\"tooltip\":{\"shared\":true,\"style\":{\"fontSize\":\"18px\"},\"shadow\":false,\"pointFormat\":\"<span style=\\\"color:{series.color}\\\">{point.y}<\\/span>\",\"borderWidth\":0},\"series\":[{\"name\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\",\"type\":\"area\",\"tooltip\":{\"valueSuffix\":\" C\"},\"data\":[]}]}'),
(2, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>/<#LANG_DEVICES_CURRENT_HUMIDITY#>', '', '', 24, 60, '', NULL, '{\"chart\":{\"renderTo\":\"container_chart_22408\",\"type\":\"spline\",\"zoomType\":\"x\",\"events\":{}},\"accessibility\":{\"enabled\":false},\"title\":{\"text\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\\/\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\"},\"xAxis\":{\"type\":\"datetime\",\"dateTimeLabelFormats\":{\"month\":\"%e. %b\",\"year\":\"%b\"},\"crosshair\":true,\"events\":{}},\"yAxis\":[{\"labels\":{\"format\":\"{value} C\",\"style\":{\"color\":\"#7cb5ec\"}},\"title\":{\"text\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\",\"style\":{\"color\":\"#7cb5ec\"}},\"index\":0},{\"labels\":{\"format\":\"{value} %\",\"style\":{\"color\":\"#434348\"}},\"title\":{\"text\":\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\",\"style\":{\"color\":\"#434348\"}},\"opposite\":true,\"index\":1}],\"plotOptions\":{\"spline\":{\"marker\":{\"enabled\":true}},\"area\":{},\"series\":{\"fillOpacity\":0.25}},\"tooltip\":{\"shared\":true,\"style\":{\"fontSize\":\"18px\"},\"shadow\":false,\"pointFormat\":\"<span style=\\\"color:{series.color}\\\">{point.y}<\\/span>\",\"borderWidth\":0},\"series\":[{\"name\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\",\"type\":\"spline\",\"tooltip\":{\"valueSuffix\":\" C\"},\"yAxis\":0,\"data\":[]},{\"name\":\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\",\"type\":\"spline\",\"tooltip\":{\"valueSuffix\":\" %\"},\"yAxis\":1,\"data\":[]}]}');

-- --------------------------------------------------------

--
-- Table structure for table `charts_data`
--

DROP TABLE IF EXISTS `charts_data`;
CREATE TABLE IF NOT EXISTS `charts_data` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `TYPE` varchar(50) NOT NULL DEFAULT '',
  `UNIT` varchar(50) NOT NULL DEFAULT '',
  `CHART_ID` int(10) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(100) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(100) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `SETTINGS` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `charts_data`
--

INSERT INTO `charts_data` (`ID`, `TITLE`, `VALUE`, `TYPE`, `UNIT`, `CHART_ID`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `PRIORITY`, `SETTINGS`) VALUES
(1, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>', '', 'area', 'C', 1, 'ThisComputer', 'tempOutside', 0, ''),
(5, '<#LANG_DEVICES_CURRENT_HUMIDITY#>', '', 'spline', '%', 2, 'HumSensor01', 'value', 100, ''),
(4, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>', '', 'spline', 'C', 2, 'TempSensor01', 'value', 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PARENT_ID` int(10) NOT NULL DEFAULT 0,
  `SUB_LIST` text DEFAULT NULL,
  `PARENT_LIST` text DEFAULT NULL,
  `NOLOG` int(3) NOT NULL DEFAULT 0,
  `DESCRIPTION` text DEFAULT NULL,
  `TEMPLATE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PARENT_ID` (`PARENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ID`, `TITLE`, `PARENT_ID`, `SUB_LIST`, `PARENT_LIST`, `NOLOG`, `DESCRIPTION`, `TEMPLATE`) VALUES
(7, 'Timer', 0, '7', '0', 1, '', NULL),
(10, 'Computer', 0, '10', '0', 0, '', NULL),
(21, 'systemStates', 0, '21', '0', 0, '', NULL),
(24, 'OperationalModes', 0, '24', '0', 0, '', NULL),
(25, 'Rooms', 0, '25', '0', 0, 'Rooms/Locations', NULL),
(32, 'Users', 0, '32', '0', 0, '', NULL),
(69, 'openweather', 0, NULL, NULL, 0, NULL, NULL),
(39, 'SDevices', 0, '40,41,42,57,62,43,44,45,46,47,48,49,50,51,52,53,54,56,61,64,58,59,60,63', '0', 0, 'General Devices Class', NULL),
(40, 'SControllers', 39, '41,42,57,62', '39', 0, 'Controllable device', NULL),
(41, 'SRelays', 40, '41', '39,40', 0, NULL, NULL),
(42, 'SDimmers', 40, '42', '39,40', 0, NULL, NULL),
(43, 'SMotions', 39, '43', '39', 0, NULL, NULL),
(44, 'SOpenClose', 39, '44', '39', 0, NULL, NULL),
(45, 'SButtons', 39, '45', '39', 0, NULL, NULL),
(46, 'SSensors', 39, '47,48,49,50,51,52,53,54,56,61,64', '39', 0, NULL, NULL),
(47, 'STempSensors', 46, '47', '39,46', 0, NULL, NULL),
(48, 'SHumSensors', 46, '48', '39,46', 0, NULL, NULL),
(49, 'SStateSensors', 46, '49', '39,46', 0, NULL, NULL),
(50, 'SPercentageSensors', 46, '50', '39,46', 0, NULL, NULL),
(51, 'SPressureSensors', 46, '51', '39,46', 0, NULL, NULL),
(52, 'SPowукSensors', 46, '52', '39,46', 0, NULL, NULL),
(53, 'SVoltageSensors', 46, '53', '39,46', 0, NULL, NULL),
(54, 'SCurrentSensors', 46, '54', '39,46', 0, NULL, NULL),
(55, 'HomeBridgeClass', 0, '55', '0', 0, '', NULL),
(56, 'SPowerSensors', 46, '56', '39,46', 0, NULL, NULL),
(57, 'SRGB', 40, '57', '39,40', 0, NULL, NULL),
(58, 'SLeak', 39, '58', '39', 0, NULL, NULL),
(59, 'SSmoke', 39, '59', '39', 0, NULL, NULL),
(60, 'SCounters', 39, '60', '39', 0, NULL, NULL),
(61, 'SLightSensors', 46, '61', '39,46', 0, NULL, NULL),
(62, 'SThermostats', 40, '62', '39,40', 0, NULL, NULL),
(63, 'SCameras', 39, '63', '39', 0, NULL, NULL),
(64, 'SGeneralSensors', 46, '64', '39,46', 0, NULL, NULL),
(65, 'SGroups', 40, NULL, NULL, 0, NULL, NULL),
(66, 'SHTML', 39, NULL, NULL, 0, NULL, NULL),
(67, 'SOpenable', 39, NULL, NULL, 0, NULL, NULL),
(68, 'SAirConditioners', 40, NULL, NULL, 0, NULL, NULL),
(70, 'ow_fact', 69, NULL, NULL, 0, NULL, NULL),
(71, 'ow_forecast', 69, NULL, NULL, 0, NULL, NULL),
(72, 'SVacuums', 40, NULL, NULL, 0, NULL, NULL),
(73, 'SMedias', 40, NULL, NULL, 0, NULL, NULL),
(74, 'STVs', 40, NULL, NULL, 0, NULL, NULL),
(75, 'SMoistureSensors', 46, NULL, NULL, 0, NULL, NULL),
(76, 'SCO2Sensors', 46, NULL, NULL, 0, NULL, NULL),
(77, 'SRadiationSensors', 46, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PATH` varchar(255) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`ID`, `PATH`, `TITLE`) VALUES
(10, '/var/www/html/media/', 'Media');

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
CREATE TABLE IF NOT EXISTS `commands` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `COMMAND` varchar(255) NOT NULL DEFAULT '',
  `URL` varchar(255) NOT NULL DEFAULT '',
  `WIDTH` int(10) NOT NULL DEFAULT 0,
  `HEIGHT` int(10) NOT NULL DEFAULT 0,
  `PARENT_ID` int(10) NOT NULL DEFAULT 0,
  `SUB_LIST` text DEFAULT NULL,
  `PARENT_LIST` text DEFAULT NULL,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `WINDOW` varchar(255) NOT NULL DEFAULT '',
  `AUTOSTART` int(3) NOT NULL DEFAULT 0,
  `TYPE` char(50) NOT NULL DEFAULT '',
  `MIN_VALUE` float NOT NULL DEFAULT 0,
  `MAX_VALUE` float NOT NULL DEFAULT 0,
  `CUR_VALUE` varchar(255) NOT NULL DEFAULT '',
  `STEP_VALUE` float NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `ONCHANGE_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `ONCHANGE_METHOD` varchar(255) NOT NULL DEFAULT '',
  `ICON` varchar(50) NOT NULL DEFAULT '',
  `DATA` text DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `AUTO_UPDATE` int(10) NOT NULL DEFAULT 0,
  `CODE` text DEFAULT NULL,
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `EXT_ID` int(10) NOT NULL DEFAULT 0,
  `VISIBLE_DELAY` int(10) NOT NULL DEFAULT 0,
  `INLINE` int(3) NOT NULL DEFAULT 0,
  `SUB_PRELOAD` int(3) NOT NULL DEFAULT 0,
  `RENDER_TITLE` varchar(255) NOT NULL DEFAULT '',
  `RENDER_DATA` text DEFAULT NULL,
  `RENDER_UPDATED` datetime DEFAULT NULL,
  `SMART_REPEAT` int(3) NOT NULL DEFAULT 0,
  `READ_ONLY` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`ID`, `TITLE`, `COMMAND`, `URL`, `WIDTH`, `HEIGHT`, `PARENT_ID`, `SUB_LIST`, `PARENT_LIST`, `PRIORITY`, `WINDOW`, `AUTOSTART`, `TYPE`, `MIN_VALUE`, `MAX_VALUE`, `CUR_VALUE`, `STEP_VALUE`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `ONCHANGE_OBJECT`, `ONCHANGE_METHOD`, `ICON`, `DATA`, `SCRIPT_ID`, `AUTO_UPDATE`, `CODE`, `SYSTEM`, `EXT_ID`, `VISIBLE_DELAY`, `INLINE`, `SUB_PRELOAD`, `RENDER_TITLE`, `RENDER_DATA`, `RENDER_UPDATED`, `SMART_REPEAT`, `READ_ONLY`) VALUES
(1, '<#LANG_APP_MEDIA_BROWSER#>', '', '', 0, 0, 0, '3', '0', 6000, '', 0, '', 0, 0, '0', 0, '', '', '', '', '1_iPhone_MUSIC_5_sm.png', '', 0, 0, '', '', 0, 0, 0, 0, 'Медиа', '', '2015-12-03 14:42:25', 0, 0),
(3, 'Player control', '', '', 0, 0, 1, '3', '1', 90, '', 0, 'custom', 0, 0, '0', 0, '', '', '', '', '', '[#module name=\"app_player\" mode=\"menu\"#]', 0, 0, '', '', 0, 0, 0, 0, 'Player control', '<!-- begin of file inner_code --><!-- begin of file ./templates/app_player/app_player.html -->\n\n<!-- Frontend -->\n \n<script language=\"javascript\">\n function playerCommandProcessed(id, data) {\n  var elem=document.getElementById(\'playerStatus\');\n  elem.innerHTML=data;  \n  return false;\n }\n function playerCommand(pcmd) {\n  if ($(\"#selPlayTerminal\").val()==\'\') return false;\n  if ($(\"#hidPlayPath\").val()==\'\' && pcmd==\'refresh\') return false;\n  var elem=document.getElementById(\'playerStatus\');\n  elem.innerHTML=pcmd+\'...\';\n  var url=\"/popup/app_player.html?ajax=1\";\n  url+=\'&command=\'+pcmd;\n  url+=\'&play_terminal=\'+$(\"#selPlayTerminal\").val();\n  url+=\'&play=\'+URLencode($(\"#hidPlayPath\").val());\n  url+=\'&rnd=\'+URLencode($(\"#hidPlayerRnd\").val());\n  if (pcmd==\'volume\') {\n   url+=\'&volume=\'+URLencode($(\"#selVolume\").val());\n  }\n  //prompt(url, url);\n  AJAXRequest(url, \'playerCommandProcessed\', \'\');\n  return false;\n }\n</script>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n <tr>\n  <form action=\"/nf.php?pd=pz_Y29tbWFuZHM6e3BhcmVudF9pdGVtPTF9pz_YXBwbGljYXRpb246e2FjdGlvbj1tZW51fQ%3D%3Dpz_&md=app_player&inst=&\" method=\"get\" name=\"frmPlayerControl\" id=\"frmPlayerControl\">\n  <td align=\"right\" style=\"vertical-align:middle\">\n  <div style=\"display:none\">\n   <select name=\"play_terminal\" id=\"selPlayTerminal\" class=\"form-control input-sm\">\n    \n    <option value=\"MAIN\" selected>Server\n    \n   </select>\n  </div>\n   <div id=\'playerStatus\' style=\"color:white\"></div>\n\n  </td>\n  </tr><tr>\n  <td nowrap><select name=\"volume\" id=\'selVolume\' onChange=\"playerCommand(\'volume\')\" class=\"form-control input-sm\">\n   \n   <option value=\"0\">0%\n   \n   <option value=\"5\">5%\n   \n   <option value=\"10\">10%\n   \n   <option value=\"15\">15%\n   \n   <option value=\"20\">20%\n   \n   <option value=\"25\">25%\n   \n   <option value=\"30\">30%\n   \n   <option value=\"35\">35%\n   \n   <option value=\"40\">40%\n   \n   <option value=\"45\">45%\n   \n   <option value=\"50\">50%\n   \n   <option value=\"55\">55%\n   \n   <option value=\"60\">60%\n   \n   <option value=\"65\">65%\n   \n   <option value=\"70\">70%\n   \n   <option value=\"75\">75%\n   \n   <option value=\"80\">80%\n   \n   <option value=\"85\">85%\n   \n   <option value=\"90\">90%\n   \n   <option value=\"95\" selected>95%\n   \n   <option value=\"100\">100%\n   \n  </select></td>\n  <td valign=\"top\">\n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"pause\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/playback_pause.png\" border=\"0\"></a></div>\n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"prev\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/playback_prev.png\" border=\"0\"></a></div>\n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"refresh\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/playback_play.png\" border=\"0\"></a></div> \n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"next\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/playback_next.png\" border=\"0\"></a></div>\n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"fullscreen\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/eye.png\" border=\"0\"></a></div>\n   <div style=\"float:left;width:48px;height:48px;text-align:center\"><a href=\"#\" onClick=\'return playerCommand(\"close\");\' style=\"padding:0;margin:0;display:inline;\"><img src=\"/img/icons/delete.png\" border=\"0\"></a></div>\n  </td>\n </tr>\n <input type=\"hidden\" name=\"play\" value=\"\" id=\"hidPlayPath\">\n <input type=\"hidden\" name=\"rnd\" value=\"\" id=\"hidPlayerRnd\">\n <input type=\"hidden\" name=\"pd\" value=\"pz_Y29tbWFuZHM6e3BhcmVudF9pdGVtPTF9pz_YXBwbGljYXRpb246e2FjdGlvbj1tZW51fQ%3D%3Dpz_\">\n<input type=\"hidden\" name=\"md\" value=\"app_player\">\n<input type=\"hidden\" name=\"inst\" value=\"\">\n</FORM><!-- modified -->\n \n</table>\n\n\n\n<!-- end of file ./templates/app_player/app_player.html --><!-- end of file inner_code -->', '2017-03-03 14:32:26', 0, 0),
(75, '<#LANG_MODULE_LAYOUTS#>', '', '', 0, 0, 86, '75', '86', 1000, '', 0, 'custom', 0, 0, '0', 0, '', '', '', '', '', '[#module name=\"layouts\"#]', 0, 60, '', '', 0, 0, 0, 0, 'Домашние страницы', '<!-- begin of file inner_code --><!-- begin of file ./templates/layouts/layouts.html -->\n\n\n<!-- Frontend -->\n \n\n <!-- action usual -->\n <!-- table layouts search -->\n \n  <!-- results -->\n\n\n<ul data-role=\"listview\">\n\n <li>\n  \n  \n  \n  <a href=\"/popup/scenes.html\" target=_blank>Сцены</a>\n  \n  </li>\n\n <li>\n  \n  <a href=\"/page/15.html\" target=_blank>Panel</a>\n  \n  \n  \n  </li>\n\n <li>\n  \n  \n  <a href=\"/apps.html\" target=_blank>Приложения</a>\n  \n  \n  </li>\n\n</ul>\n\n\n \n <!-- / table layouts search -->\n <!-- table layouts edit -->\n \n <!-- / table layouts edit -->\n <!-- table layouts view --> \n \n <!-- / table layouts view -->\n\n\n\n<!-- end of file ./templates/layouts/layouts.html --><!-- end of file inner_code -->', '2017-08-10 15:01:48', 0, 0),
(82, '<#LANG_GENERAL_EVENTS_LOG#>', '', '', 0, 0, 0, '82', '0', 10, '', 0, 'label', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'История событий', '', '2015-12-03 14:42:25', 0, 0),
(74, '<#LANG_GENERAL_EVENTS_LOG#> (code)', '', '', 0, 0, 0, '74', '0', 9, '', 0, 'custom', 0, 0, '0', 0, '', '', '', '', '', '<div style=\"text-shadow:none;font-weight:normal;\">[#module name=\"shoutbox\" limit=\"10\" reverse=\"1\" mobile=\"1\"#]</div>', 0, 60, '', '', 0, 0, 0, 0, 'История событий (code)', '<!-- begin of file inner_code --><div style=\"text-shadow:none;font-weight:normal;\"><!-- begin of file ./templates/shoutbox/shoutbox.html -->\n\r\n<!-- Frontend -->\r\n \n\r\n <!-- action usual -->\r\n <!-- table shouts search -->\r\n \r\n  \n<!-- table shouts search -->\n<!-- results -->\n\n<div class=\"shout_box\">  <!-- begin shout_box -->\n\n<!-- search results (list) -->\n<div id=\"shoutboxContent\" class=\"shout_content\">\n<span>15:53 <b>Алиса</b>: Ай-пи адрес 192.168.0.109 fdc0:abd8:6765::9ea fdc0:abd8:6765:0:ba20:4432:3e89:eb7b</span><br><span>15:53 <b>Алиса</b>: Система загружена</span><br>\n</div>\n<!-- / search results (list) -->\n<!-- / results -->\n\n\n<div class=\"shout_form\">\n<form action=\"/nf.php?pd=pz_pz_YXBwbGljYXRpb246e2FjdGlvbj1tZW51fQ%3D%3Dpz_&md=shoutbox&inst=&\" name=\"frmShoutBoxMsg\" method=\"get\" style=\"margin:0px\" onSubmit=\'return false;\'>\n<input type=\"text\" name=\"message\" class=\"shout_input\" placeholder=\"Команда\"><input type=\"submit\" name=\"submit\" value=\"Отправить\" onClick=\"return sendShoutMessage();\"  class=\"shout_button\">\n<input type=\"hidden\" name=\"pd\" value=\"pz_pz_YXBwbGljYXRpb246e2FjdGlvbj1tZW51fQ%3D%3Dpz_\">\n<input type=\"hidden\" name=\"md\" value=\"shoutbox\">\n<input type=\"hidden\" name=\"inst\" value=\"\">\n</FORM><!-- modified -->\n</div>\n\n</div> <!-- end shout_box -->\n<script language=\"javascript\">\n\nvar shoutTimer;\n\n function updateShoutContent() {\n  clearTimeout(shoutTimer);\n\n  var url=\"/popup/shoutbox.html?\";\n\n   url=url+\'&limit=10&getdata=1&reverse=1\';\n   $.ajax({\n    url: url,\n    }).done(function(data) { \n     if (data!=\'\') {\n      old_data=$(\'#shoutboxContent\').html();\n      if (old_data!=data) {\n       $(\'#shoutboxContent\').html(data);\n      }\n     }\n\n  \n  shoutTimer=setTimeout(\"updateShoutContent(\'\', \'\');\", 10000);\n  \n\n\n    });\n\n }\n\n function sendShoutMessage() {\n  if (document.frmShoutBoxMsg.message.value == \'\') return false; \n  var msg=URLencode(document.frmShoutBoxMsg.message.value);\n  document.frmShoutBoxMsg.message.value=\'\';\n  var url=\"/popup/shoutbox.html?\";\n  url=url+\'&limit=10&msg=\'+msg;\n  $.ajax({\n   url: url,\n   }).done(function(data) { \n    if (data!=\'OK\' && data!=\'\') {\n     $(\'#shoutboxContent\').html(data);\n    }\n   });\n  return false;\n }\n</script>\n\n\n<script language=\"javascript\">\n  updateShoutContent();\n</script>\n\r\n \r\n <!-- / table shouts search -->\r\n <!-- table shouts edit -->\r\n \r\n <!-- / table shouts edit -->\r\n <!-- table shouts view --> \r\n \r\n <!-- / table shouts view -->\r\n\r\n\r\n\r\n<!-- end of file ./templates/shoutbox/shoutbox.html --></div><!-- end of file inner_code -->', '2017-08-10 15:55:32', 0, 0),
(132, '<#LANG_GENERAL_SYSTEM_REBOOT#>', '', '', 0, 0, 129, '132', '86,129', 0, '', 0, 'button', 0, 0, 'clicked', 0, '', '', '', '', '', '', 32, 0, '', '', 0, 0, 0, 0, 'Перезагрузить', '', '2016-03-22 16:58:29', 0, 0),
(129, '<#LANG_GENERAL_SYSTEM_SHUTDOWN_REBOOT#>', '', '', 0, 0, 86, '132,130,131', '86', 0, '', 0, '', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Выключение системы', '', '2016-03-22 16:43:59', 0, 0),
(86, '<#LANG_GENERAL_SERVICE#>', '', '', 0, 0, 0, '75,129,132,130,131,98,99,136,137,149', '0', 2, '', 0, '', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Сервис', '', '2015-12-03 14:42:25', 0, 0),
(106, '<#LANG_GENERAL_CONTROL#>', '', '', 0, 0, 0, '108,119,120', '0', 7000, '', 0, '', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 1, 'Управление', '', '2015-12-03 14:42:25', 0, 0),
(91, '<#LANG_GENERAL_CLIMATE#> (<#LANG_GENERAL_INSIDE#>: %TempSensor01.Value%&deg;C / %HumSensor01.Value%% <#LANG_GENERAL_OUTSIDE#>: %ow_fact.temperature%°C)', '', '', 0, 0, 0, '92,93', '0', 8000, '', 0, '', 0, 0, '', 0, '', '', '', '', '', '', 0, 60, '', '', 0, 0, 0, 0, 'Климат (Дома: 20.8&deg;C / 36% На улице: 6°C)', '', '2017-03-21 16:00:13', 0, 0),
(92, '<#LANG_GENERAL_WEATHER_FORECAST#> (code)', '', '', 0, 0, 91, '92', '91', 1000, '', 0, 'custom', 0, 0, '', 0, '', '', '', '', '', '[#module name=\"app_openweather\" forecast=\"2\"#]', 0, 0, '', '', 0, 0, 0, 0, 'Прогноз погоды (code)', '<!-- begin of file inner_code --><!-- begin of file ./templates/app_openweather/app_openweather.html -->\n   <!-- Frontend -->\n   <div>\n   Погода в г.&nbsp;Minsk&nbsp;по состоянию на&nbsp;21.03.2017 15:37:00 EAT 2017\n</div>\n\n\n   \n<div class=\"row\">\n   <div class=\"col-sm-8\">\n      <h3>Сейчас</h3>\n      <div id=\"daily_list\">\n         <table class=\"table\">\n            <tbody>\n               <tr>\n                  <td><img src=\"/cached/openweather/image/09d.png\"></td>\n                  <td>\n                     <ul class=\"list-unstyled\"  style=\"list-style:outside none none;padding-left:0;font-size:14px;\">\n                        <li><span class=\"label label-warning\">+6°C </span> &nbsp;&nbsp;<i>сыро</i></li>\n                        <li>Ветер: Ю(190&deg;)&nbsp;3м/с</li>\n                        <li>Облачность: 90%</li>\n                        <li>Давление: 1006гПА / 754.56 мм рт. ст</li>\n                        <li>Влажность: 100%</li>\n                        <li>Восход/заход солнца: 07:08:00 / 19:25:30</li>\n                        <li>Долгота дня: 12:17</li>\n                     </ul>\n                  </td>\n               </tr>\n\n            </tbody>\n         </table>\n      </div>\n   </div>\n</div>\n   \n\n\n\n<div class=\"row\">\n   <div class=\"col-sm-8\">\n      <h3>Прогноз на несколько дней</h3>\n      <div id=\"daily_list\">\n         <table class=\"table-responsive\">\n            <tbody>\n               \n               <tr>\n                  <td><span>Сегодня 21.03.2017</span><br /><img src=\"/cached/openweather/image/10d.png\"></td>\n                  <td style=\"padding-bottom:1em;\">\n                     <ul class=\"list-unstyled\" style=\"list-style:outside none none;padding-left:0;font-size:14px;\">\n                        <li><span class=\"label label-warning\">+6°C </span><span class=\"label label-default\">+7.66°C </span> <i>дождь</i></li>\n                        <li>Ветер: <small>ЮЮЗ(196&deg;) 6.72м/с</small></li>\n                        <li><span>Облачность: 92%,</span></li>\n                        <li><span>Давление: 990.22гПА / 742.73 мм рт. ст</span></li>\n                        <li>Влажность: 96%</li>\n                        <li>Объем осадков(дождь), выпавших за последние 3 часа: 3.52mm</li>\n                        \n                        <li>Восход/заход солнца: 07:08:00 / 19:25:30</li>\n                        <li>Долгота дня: 12:17</li>\n                     </ul>\n                  </td>\n               </tr>\n               \n               <tr>\n                  <td><span>Прогноз на 22.03.2017</span><br /><img src=\"/cached/openweather/image/10d.png\"></td>\n                  <td style=\"padding-bottom:1em;\">\n                     <ul class=\"list-unstyled\" style=\"list-style:outside none none;padding-left:0;font-size:14px;\">\n                        <li><span class=\"label label-warning\">+5.71°C </span><span class=\"label label-default\">+1.89°C </span> <i>легкий дождь</i></li>\n                        <li>Ветер: <small>CЗ(319&deg;) 4.46м/с</small></li>\n                        <li><span>Облачность: 92%,</span></li>\n                        <li><span>Давление: 1001.57гПА / 751.24 мм рт. ст</span></li>\n                        <li>Влажность: 100%</li>\n                        <li>Объем осадков(дождь), выпавших за последние 3 часа: 1.7mm</li>\n                        \n                        <li>Восход/заход солнца: 07:05:32 / 19:27:22</li>\n                        <li>Долгота дня: 12:21</li>\n                     </ul>\n                  </td>\n               </tr>\n               \n            </tbody>\n         </table>\n      </div>\n   </div>\n</div>\n\n\n\n<!-- end of file ./templates/app_openweather/app_openweather.html --><!-- end of file inner_code -->', '2017-08-10 15:01:43', 0, 0),
(93, '<#LANG_GENERAL_WEATHER_FORECAST#>', '', '', 0, 0, 91, '93', '91', 1001, '', 0, 'label', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Прогноз погоды', '', '2015-12-03 14:42:25', 0, 0),
(97, 'State', '', '', 0, 0, 0, '97', '0', 100010, '', 0, 'custom', 0, 0, '', 0, '', '', '', '', '', '<big style=\"font-size:24px\">%ThisComputer.timeNow%</big>\r\n\r\n<img src=\"/img/icons/status/lock_32_%Security.stateColor%.png\" align=\"absmiddle\"> %Security.stateDetails%\r\n<img src=\"/img/icons/status/system_32_%System.stateColor%.png\" align=\"absmiddle\"> %System.stateDetails%\r\n<img src=\"/img/icons/status/network_32_%Communication.stateColor%.png\" align=\"absmiddle\"> %Communication.stateDetails%\r\n<br/>\r\n%ThisComputer.somebodyHomeText%\r\n', 0, 10, '', '', 0, 0, 0, 0, 'State', '<big style=\"font-size:24px\">15:55</big>\r\n\r\n<img src=\"/img/icons/status/lock_32_green.png\" align=\"absmiddle\"> \r\n<img src=\"/img/icons/status/system_32_green.png\" align=\"absmiddle\"> \r\n<img src=\"/img/icons/status/network_32_green.png\" align=\"absmiddle\"> \r\n<br/>\r\nКто-то дома: Коридор\r\n', '2017-08-10 15:55:30', 0, 0),
(98, '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, 86, '99,136,137,149', '86', 20000, '', 0, '', 0, 0, '', 0, '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Настройки', '', '2014-08-25 17:04:27', 0, 0),
(99, '<#LANG_GENERAL_CLOCKCHIME#>', '', '', 0, 0, 98, '99', '86,98', 1000, '', 0, 'switch', 0, 0, '1', 0, 'ThisComputer', 'clockChimeEnabled', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Говорить время', '', '2014-08-25 17:04:33', 0, 0),
(108, '<#LANG_GENERAL_LIGHT#> 1', '', '', 0, 0, 106, '108', '106', 0, '', 0, 'switch', 0, 0, '0', 0, 'Switch1', 'status', '', '', '', '', 0, 300, '', '', 0, 0, 0, 0, 'Блок 1', '', '2016-04-04 12:01:04', 0, 0),
(119, '<#LANG_GENERAL_LIGHT#> 2', '', '', 0, 0, 106, '119', '106', 0, '', 0, 'switch', 0, 0, '0', 0, 'Switch2', 'status', '', '', '', '', 0, 300, '', '', 0, 0, 0, 0, 'Блок 2', '', '2016-04-04 12:01:04', 0, 0),
(120, '<#LANG_GENERAL_LIGHT#> 3', '', '', 0, 0, 106, '120', '106', 0, '', 0, 'switch', 0, 0, '0', 0, 'Switch3', 'status', '', '', '', '', 0, 300, '', '', 0, 0, 0, 0, 'Блок 3', '', '2016-04-04 12:01:04', 0, 0),
(130, '<#LANG_GENERAL_SYSTEM_SHUTDOWN#>', '', '', 0, 0, 129, '130', '86,129', 0, '', 0, 'button', 0, 0, 'clicked', 0, '', '', '', '', '', '', 31, 0, '', '', 0, 0, 0, 0, 'Отключить', '', '2016-03-22 16:44:02', 0, 0),
(131, '<#LANG_WARNING#>', '', '', 0, 0, 129, '131', '86,129', 100, '', 0, 'custom', 0, 0, '', 0, '', '', '', '', '', '<#LANG_GENERAL_SYSTEM_SHUTDOWN_WARNING#>', 0, 0, '', '', 0, 0, 0, 0, 'Предупреждение', 'Пожалуйста, подождите 30 секунд до отключения питания после нажатия кнопки.', '2016-03-22 16:43:59', 0, 0),
(136, '<#LANG_GENERAL_NIGHT_MODE#> (<#LANG_GENERAL_STARTING#>)', '', '', 0, 0, 98, '136', '86,98', 900, '', 0, 'timebox', 0, 0, '20:00', 0, 'ThisComputer', 'NightModeStart', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Режим Ночь (начало)', '', '2016-03-29 15:11:12', 0, 0),
(137, '<#LANG_GENERAL_NIGHT_MODE#> (<#LANG_GENERAL_ENDING#>)', '', '', 0, 0, 98, '137', '86,98', 890, '', 0, 'timebox', 0, 0, '08:00', 0, 'ThisComputer', 'NightModeEnd', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 'Режим Ночь (окончание)', '', '2016-03-29 15:11:20', 0, 0),
(149, '<#LANG_GENERAL_LANGUAGE_TIMEZONE#>', '', '/popup/first_start.html', 0, 0, 98, '149', '86,98', 8, '', 0, 'urlblank', 0, 0, '', 0, '', '', '', '', '', NULL, 0, 0, NULL, '', 0, 0, 0, 0, 'Язык и часовой пояс', NULL, '2016-11-22 12:47:16', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `COUNTRY_ID` int(10) NOT NULL,
  `COUNTRY_GUID` varchar(48) NOT NULL,
  `COUNTRY_NAME` varchar(64) NOT NULL,
  `LM_DATE` datetime NOT NULL,
  `COUNTRY_CODE` varchar(8) DEFAULT NULL,
  `COUNTRY_PHONE_CODE` varchar(8) DEFAULT NULL,
  `LATITUDE` float(18,5) DEFAULT NULL,
  `LONGITUDE` float(18,5) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `AK_COUNTRY__GUID` (`COUNTRY_GUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_GUID`, `COUNTRY_NAME`, `LM_DATE`, `COUNTRY_CODE`, `COUNTRY_PHONE_CODE`, `LATITUDE`, `LONGITUDE`) VALUES
(1, '25459617-F4D3-EB0A-6777-2D7CB5F876B9', 'Andorra', '2015-04-14 12:09:36', 'AD', '376', NULL, NULL),
(2, '24E45AEB-7FD7-783A-2008-F5A35CA064F7', 'United Arab Emirates', '2015-04-14 12:09:36', 'AE', '971', NULL, NULL),
(3, '3F039DE6-2908-4731-96FE-041E04A7E962', 'Afghanistan', '2015-04-14 12:09:36', 'AF', '93', NULL, NULL),
(4, 'F1FEB2CF-618A-59D0-0DDC-B4F8B4ED976E', 'Antigua and Barbuda', '2015-04-14 12:09:36', 'AG', '1268', NULL, NULL),
(5, '909E8639-771A-D2CD-4405-7A8368A9D04A', 'Anguilla', '2015-04-14 12:09:36', 'AI', '1264', NULL, NULL),
(6, '35173F09-0E98-0C3E-77A6-2AD8F8F5DE89', 'Albania', '2015-04-14 12:09:36', 'AL', '355', NULL, NULL),
(7, '632C5757-664D-108D-802F-3F62E78F41B9', 'Armenia', '2015-04-14 12:09:36', 'AM', '374', NULL, NULL),
(8, '33C045E6-E7F0-6886-FE2D-46C5EAA79042', 'Angola', '2015-04-14 12:09:36', 'AO', '244', NULL, NULL),
(9, '8E7E291E-B21C-ABAC-7791-4733C412D3CA', 'Argentina', '2015-04-14 12:09:36', 'AR', '54', NULL, NULL),
(10, 'F4EC01D6-D793-EE6C-58EA-D66DABE0E15F', 'American Samoa', '2015-04-14 12:09:36', 'AS', '1684', NULL, NULL),
(11, 'DA24D62E-C926-A91D-E11A-96AAD3E5DDE1', 'Austria', '2015-04-14 12:09:36', 'AT', '43', NULL, NULL),
(12, 'F193E97D-B13C-9506-D976-CCB52BC864BF', 'Australia', '2015-04-14 12:09:36', 'AU', '61', NULL, NULL),
(13, '363B89ED-E346-3EEE-67E1-77A9ACA104BE', 'Aruba', '2015-04-14 12:09:36', 'AW', '297', NULL, NULL),
(14, '0129859C-6BC4-C7C6-F0E7-212E8BFFE04F', 'Åland Islands', '2015-04-14 12:09:36', 'AX', '358', NULL, NULL),
(15, '96C23A30-8A7D-D545-6E33-1EF6070EAA2A', 'Azerbaijan', '2015-04-14 12:09:36', 'AZ', '994', NULL, NULL),
(16, '1C37B968-7D44-2AED-7171-116232E0376F', 'Bosnia and Herzegovina', '2015-04-14 12:09:36', 'BA', '387', NULL, NULL),
(17, '784A4C7F-8B44-353A-8B27-996E1B38791C', 'Barbados', '2015-04-14 12:09:36', 'BB', '1246', NULL, NULL),
(18, '735D20D8-45D8-B861-6B2B-9F1B22F86447', 'Bangladesh', '2015-04-14 12:09:36', 'BD', '880', NULL, NULL),
(19, '3B71F5B5-2AC2-9154-404D-191ABFBC4729', 'Belgium', '0000-00-00 00:00:00', '2015-04-', '32', NULL, NULL),
(20, 'B5CB258B-4F64-D109-E9D5-60A78ED0A637', 'Burkina Faso', '2015-04-14 12:09:36', 'BF', '226', NULL, NULL),
(21, '1B6E6DAD-F17E-C6C0-61A4-41B20394BDBE', 'Bulgaria', '2015-04-14 12:09:36', 'BG', '359', NULL, NULL),
(22, '6AB06D58-6177-06A7-0937-AA363E22FE30', 'Bahrain', '2015-04-14 12:09:36', 'BH', '973', NULL, NULL),
(23, 'D1581E51-B2B3-8078-F5EC-8463B5484393', 'Burundi', '2015-04-14 12:09:36', 'BI', '257', NULL, NULL),
(24, '28966864-22F6-35BD-5145-1B79E5FE95C0', 'Benin', '2015-04-14 12:09:36', 'BJ', '229', NULL, NULL),
(25, 'A0910149-4E0D-D1EF-9280-90C7CA4F713A', 'Saint Barthelemy', '2015-04-14 12:09:36', 'BL', '590', NULL, NULL),
(26, 'D10E4FAB-B35B-36E2-1B11-BD87D19D493E', 'Bermuda', '2015-04-14 12:09:36', 'BM', '1441', NULL, NULL),
(27, '2EF66919-5A42-5E57-9540-254370BCFA7F', 'Brunei', '2015-04-14 12:09:36', 'BN', '673', NULL, NULL),
(28, 'B17DC404-815D-16D1-3EE6-01CFF6108DA6', 'Bolivia', '2015-04-14 12:09:36', 'BO', '597', NULL, NULL),
(29, '1677F424-62EB-CDCA-59AE-82E6BE4CD643', 'Bonaire, Sint Eustatius and Saba', '2015-04-14 12:09:36', 'BQ', '599', NULL, NULL),
(30, '364A13CD-9DD4-EB69-B481-CAF5C67AD0F3', 'Brazil', '2015-04-14 12:09:36', 'BR', '55', NULL, NULL),
(31, '3287034B-9EF0-21E6-290F-4C1435488B14', 'Bahamas', '2015-04-14 12:09:36', 'BS', '1242', NULL, NULL),
(32, '3ECFA6CC-B473-444F-60B2-F2C325726A59', 'Bhutan', '2015-04-14 12:09:36', 'BT', '975', NULL, NULL),
(33, '5CB7E864-AA89-D6A6-6483-5A0B4BF4ECE7', 'Botswana', '2015-04-14 12:09:36', 'BW', '267', NULL, NULL),
(34, '549B645E-602C-E8DC-E661-0BC58B872507', 'Belarus', '2015-04-14 12:09:36', 'BY', '375', NULL, NULL),
(35, '6EBC4137-4D87-7153-6380-1917E5AB5CC8', 'Belize', '2015-04-14 12:09:36', 'BZ', '501', NULL, NULL),
(36, '62B9E5BF-CD36-7BF9-8C86-7145E0BB87C3', 'Canada', '2015-04-14 12:09:36', 'CA', '1', NULL, NULL),
(37, 'CE623909-C6BB-FBDB-AAC4-E93B1905A157', 'Cocos (Keeling) Islands', '2015-04-14 12:09:36', 'CC', '61', NULL, NULL),
(38, 'EE5B1165-2914-906F-FC6F-CAAE4D346925', 'Democratic Republic of the Congo', '2015-04-14 12:09:36', 'CD', '243', NULL, NULL),
(39, '2DAEE215-8156-00B0-9BCF-2A11D900E923', 'Central African Republic', '2015-04-14 12:09:36', 'CF', '236', NULL, NULL),
(40, 'EDADCB74-E7C3-1081-29BA-4F59B60FF6B2', 'Republic of the Congo', '2015-04-14 12:09:36', 'CG', '242', NULL, NULL),
(41, '5024DE57-E5BB-5A9D-917D-26A1749B8D60', 'Switzerland', '2015-04-14 12:09:36', 'CH', '41', NULL, NULL),
(42, 'ABA5802C-8FE2-211F-8002-BB96E7A364DB', 'Ivory Coast', '2015-04-14 12:09:36', 'CI', '225', NULL, NULL),
(43, '00C8EB2B-8085-1D54-BE4D-35EF87A255E6', 'Cook Islands', '2015-04-14 12:09:36', 'CK', '682', NULL, NULL),
(44, '834BD2B5-93D2-17A7-91BE-CE4DEEC43366', 'Chile', '2015-04-14 12:09:36', 'CL', '56', NULL, NULL),
(45, '28A21890-3B5D-8B00-9EBE-DED06FA1ECFB', 'Cameroon', '2015-04-14 12:09:36', 'CM', '237', NULL, NULL),
(46, 'CE0E5440-B3C0-12A5-1BA3-2387A270C634', 'China', '2015-04-14 12:09:36', 'CN', '86', NULL, NULL),
(47, '622727AA-9C09-1CBB-9C8F-5F23E4F6E7AF', 'Colombia', '2015-04-14 12:09:36', 'CO', '57', NULL, NULL),
(48, 'D3860772-0731-CCE8-3F3C-8DFC229DA443', 'Costa Rica', '2015-04-14 12:09:36', 'CR', '506', NULL, NULL),
(49, 'A394D714-E73A-8327-EB0C-C1A03AD5B75C', 'Cuba', '2015-04-14 12:09:36', 'CU', '53', NULL, NULL),
(50, '38DE8E73-B254-F18B-098D-FA063DB064DE', 'Cape Verde', '2015-04-14 12:09:36', 'CV', '238', NULL, NULL),
(51, 'E05C1047-00F5-9447-4AA4-F4D231A60CDF', 'Christmas Island', '2015-04-14 12:09:36', 'CX', '61', NULL, NULL),
(52, 'E29DE5EF-A293-9921-DB69-1AE56C94789C', 'Curaçao', '2015-04-14 12:09:36', 'CW', '', NULL, NULL),
(53, '91F38946-68B4-F218-A93C-87F8018AD49A', 'Cyprus', '2015-04-14 12:09:36', 'CY', '357', NULL, NULL),
(54, '673F53C2-5C02-9B22-E956-29879756BF15', 'Czech Republic', '2015-04-14 12:09:36', 'CZ', '420', NULL, NULL),
(55, '60C952C3-0504-DC75-9E1D-499EC374B0F0', 'Germany', '2015-04-14 12:09:36', 'DE', '49', NULL, NULL),
(56, '1A3A54C9-F2E1-3E5F-079C-999D110E8EEC', 'Djibouti', '2015-04-14 12:09:36', 'DJ', '253', NULL, NULL),
(57, '7547B15D-E21A-4A2E-5F9B-1DC727C53F4A', 'Denmark', '2015-04-14 12:09:36', 'DK', '45', NULL, NULL),
(58, '7E2CF84D-1879-374A-6A41-F03318A3FB25', 'Dominica', '2015-04-14 12:09:36', 'DM', '1767', NULL, NULL),
(59, 'A07E10D2-DB62-436D-E203-A884ED728CBC', 'Dominican Republic', '2015-04-14 12:09:36', 'DO', '1809', NULL, NULL),
(60, '6CFEBD8D-4ADA-B4FF-9160-90D0C2B2118E', 'Algeria', '2015-04-14 12:09:36', 'DZ', '213', NULL, NULL),
(61, 'BC4A1696-47D1-2617-ECF6-824BADEF4C4E', 'Ecuador', '2015-04-14 12:09:36', 'EC', '593', NULL, NULL),
(62, 'AFF8DFA6-F5EE-6A43-DC59-8213D20E198A', 'Estonia', '2015-04-14 12:09:36', 'EE', '372', NULL, NULL),
(63, 'ED2AC84C-40C7-F14D-378E-16EB10094294', 'Egypt', '2015-04-14 12:09:36', 'EG', '20', NULL, NULL),
(64, '25C7A12B-226A-8989-F33B-98FEAB37B18F', 'Western Sahara', '2015-04-14 12:09:36', 'EH', '', NULL, NULL),
(65, '0C0F61A7-CED3-882E-440F-0B8B6ED939DB', 'Eritrea', '2015-04-14 12:09:36', 'ER', '291', NULL, NULL),
(66, '81387FC3-0AD1-42E7-241E-2AA939641B95', 'Spain', '2015-04-14 12:09:36', 'ES', '34', NULL, NULL),
(67, '7D8BD697-9E59-4861-4BE9-61A8AD8B4936', 'Ethiopia', '2015-04-14 12:09:36', 'ET', '251', NULL, NULL),
(68, '561A54FF-8F65-8B92-483E-2DBE528429A4', 'Finland', '2015-04-14 12:09:36', 'FI', '358', NULL, NULL),
(69, '4D930C83-DEFD-ADEA-0D64-501B4E4911CF', 'Fiji', '2015-04-14 12:09:36', 'FJ', '679', NULL, NULL),
(70, '3EF989F2-6700-B8DA-F2B5-B4A831B30BCD', 'Falkland Islands', '2015-04-14 12:09:36', 'FK', '500', NULL, NULL),
(71, '6E21E535-BF55-E53C-3CAC-7C2B621EF05B', 'Micronesia', '2015-04-14 12:09:36', 'FM', '691', NULL, NULL),
(72, '25F1AC03-B255-50A9-654C-E043D61E7DA1', 'Faroe Islands', '2015-04-14 12:09:36', 'FO', '298', NULL, NULL),
(73, '06A3DB9C-B358-74A7-BBA2-99F760FDE24E', 'France', '2015-04-14 12:09:36', 'FR', '33', NULL, NULL),
(74, '7D2D339B-5568-2B6C-28F6-1CAD95AE685E', 'Gabon', '2015-04-14 12:09:36', 'GA', '241', NULL, NULL),
(75, '73D1D5BB-571F-08E7-2A4F-4AB63AA9793C', 'United Kingdom', '2015-04-14 12:09:36', 'GB', '44', NULL, NULL),
(76, '52764C53-FF3F-BA7C-14BF-7E6262C26BB6', 'Grenada', '2015-04-14 12:09:36', 'GD', '1473', NULL, NULL),
(77, 'ABAFEB9B-9DB0-5261-4625-53C6A32A8392', 'Georgia', '2015-04-14 12:09:36', 'GE', '995', NULL, NULL),
(78, '93A6ABF8-C217-B219-0AEF-F63F51330113', 'French Guiana', '2015-04-14 12:09:36', 'GF', '', NULL, NULL),
(79, 'DD5B81B6-DF46-6B93-40DD-32B63B1C4482', 'Guernsey', '2015-04-14 12:09:36', 'GG', '', NULL, NULL),
(80, 'AE89DC78-DD22-0165-1F4A-37757DC2C6A6', 'Ghana', '2015-04-14 12:09:36', 'GH', '233', NULL, NULL),
(81, '691A673C-A72B-45C6-EBA5-AE4D48128B0C', 'Gibraltar', '2015-04-14 12:09:36', 'GI', '350', NULL, NULL),
(82, 'E1C9DDCE-DFC6-C80E-9E6D-2CFACD5A3EF3', 'Greenland', '2015-04-14 12:09:36', 'GL', '299', NULL, NULL),
(83, 'DC6434F3-07BD-D0AF-5EF1-021830DD761A', 'Gambia', '2015-04-14 12:09:36', 'GM', '220', NULL, NULL),
(84, '0EB68AA9-0863-564B-E8B9-7BE51B19C627', 'Guinea', '2015-04-14 12:09:36', 'GN', '224', NULL, NULL),
(85, '64BAD731-A2B6-D774-4382-6A3F69041EB2', 'Guadeloupe ', '2015-04-14 12:09:36', 'GP', '', NULL, NULL),
(86, '72FFFB07-88AA-6CA5-C9A1-664AAE69E39F', 'Equatorial Guinea', '2015-04-14 12:09:36', 'GQ', '240', NULL, NULL),
(87, 'EBC8E95D-EFA7-A62F-E9D0-1230876D82AD', 'Greece', '2015-04-14 12:09:36', 'GR', '30', NULL, NULL),
(88, '589A3D09-2DAA-54DD-B119-8A8D0CD9E9B1', 'South Georgia and the South Sandwich Islands', '2015-04-14 12:09:36', 'GS', '', NULL, NULL),
(89, '6119B99F-E4B7-0B13-45F3-293FD0A84862', 'Guatemala', '2015-04-14 12:09:36', 'GT', '502', NULL, NULL),
(90, '6BC5F673-1D11-85D4-FF9E-3C43604EC2D0', 'Guam', '2015-04-14 12:09:36', 'GU', '1671', NULL, NULL),
(91, 'D94C617D-E792-CAAF-2E00-5A8EEA208C8C', 'Guinea-Bissau', '2015-04-14 12:09:36', 'GW', '245', NULL, NULL),
(92, '9313337B-D700-D83C-CA29-5F48D8726308', 'Guyana', '2015-04-14 12:09:36', 'GY', '592', NULL, NULL),
(93, 'CEFBA783-88BA-FFDE-77F3-43B3FF801484', 'Hong Kong', '2015-04-14 12:09:36', 'HK', '852', NULL, NULL),
(94, 'CBA2E631-D4D1-B735-81D3-5DAC86AE8C76', 'Honduras', '2015-04-14 12:09:36', 'HN', '504', NULL, NULL),
(95, 'FEA02A43-5185-C6A7-A26C-935578D43E6D', 'Croatia', '2015-04-14 12:09:36', 'HR', '385', NULL, NULL),
(96, '02927AD4-8894-FE99-C9DD-E0E7F4DC63B1', 'Haiti', '2015-04-14 12:09:36', 'HT', '509', NULL, NULL),
(97, '42405C6A-097F-BAF2-93A6-86513986110A', 'Hungary', '2015-04-14 12:09:36', 'HU', '36', NULL, NULL),
(98, '79798E7A-4327-469A-5EC1-81319DDC1E90', 'Indonesia', '2015-04-14 12:09:36', 'ID', '62', NULL, NULL),
(99, '2A8985F3-8891-5685-A0FF-972A5DF8620B', 'Ireland', '2015-04-14 12:09:36', 'IE', '353', NULL, NULL),
(100, 'EEBDEB95-6B76-B2B0-F2C9-2BFB1499E9FD', 'Israel', '2015-04-14 12:09:36', 'IL', '972', NULL, NULL),
(101, '71739793-0365-6479-F9A2-9B6F57239816', 'Isle of Man', '2015-04-14 12:09:36', 'IM', '44', NULL, NULL),
(102, '18AC27F9-4025-C8CF-DA36-36004B0C5CF3', 'India', '2015-04-14 12:09:36', 'IN', '91', NULL, NULL),
(103, '01BB783C-2123-8D92-36E3-397F1E9D5F7D', 'Iraq', '2015-04-14 12:09:36', 'IQ', '964', NULL, NULL),
(104, '422B82CA-FC9F-6FFF-151E-E342CBD26A32', 'Iran', '2015-04-14 12:09:36', 'IR', '98', NULL, NULL),
(105, 'CD0DAF28-6A3C-0CE3-1A06-218A7AA11408', 'Iceland', '2015-04-14 12:09:36', 'IS', '354', NULL, NULL),
(106, '8BA4B4DC-9E82-331B-7EE2-6577413FCFDE', 'Italy', '2015-04-14 12:09:36', 'IT', '39', NULL, NULL),
(107, 'D8777867-1C0B-ACF1-337A-6DD4B68B902B', 'Jersey', '2015-04-14 12:09:36', 'JE', '', NULL, NULL),
(108, '0DEFE08A-DFF2-7222-F6BC-C10BB2C2B3E3', 'Jamaica', '2015-04-14 12:09:36', 'JM', '1876', NULL, NULL),
(109, '8864615C-5A8F-56C1-262C-97CB8739E154', 'Jordan', '2015-04-14 12:09:36', 'JO', '962', NULL, NULL),
(110, 'A8DFE7EB-BA50-DF73-C88A-EB7A83636C98', 'Japan', '2015-04-14 12:09:36', 'JP', '81', NULL, NULL),
(111, 'D6F5CF13-36E4-E7D7-A6AE-32D622E2E905', 'Kenya', '2015-04-14 12:09:36', 'KE', '254', NULL, NULL),
(112, '6C1BE74C-56D3-ADFE-B75E-4DD174378C3B', 'Kyrgyzstan', '2015-04-14 12:09:36', 'KG', '996', NULL, NULL),
(113, '88F59F28-C9DC-F8B5-0AA3-6EE2F5BA2680', 'Cambodia', '2015-04-14 12:09:36', 'KH', '855', NULL, NULL),
(114, '221ACA06-D996-AA61-8EF8-A883B5EF088D', 'Kiribati', '2015-04-14 12:09:36', 'KI', '686', NULL, NULL),
(115, '50711EC0-9C17-A53D-C8D5-7BFCB17B9F74', 'Comoros', '2015-04-14 12:09:36', 'KM', '269', NULL, NULL),
(116, '5A63C8A4-AED9-E465-C42D-6B35D815788E', 'Saint Kitts and Nevis', '2015-04-14 12:09:36', 'KN', '1869', NULL, NULL),
(117, 'E2231181-F5A7-9C0D-A07D-DF498953BDB7', 'North Korea', '2015-04-14 12:09:36', 'KP', '850', NULL, NULL),
(118, '51E443A4-BBB7-45B3-BCCB-5D900AAC9A10', 'South Korea', '2015-04-14 12:09:36', 'KR', '82', NULL, NULL),
(119, '163246AC-AF1E-7EF1-ABD7-CA7C76048C0D', 'Kuwait', '2015-04-14 12:09:36', 'KW', '965', NULL, NULL),
(120, '627EF7AE-33FA-CBB0-5165-B69DE5D88639', 'Cayman Islands', '2015-04-14 12:09:36', 'KY', '1345', NULL, NULL),
(121, '4AF2B679-80E6-AE7A-6F8C-E30BB82170CB', 'Kazakhstan', '2015-04-14 12:09:36', 'KZ', '7', NULL, NULL),
(122, '5B49382E-7792-4FB2-5841-BDF46D215FB1', 'Laos', '2015-04-14 12:09:36', 'LA', '856', NULL, NULL),
(123, '4F9A2D48-4692-A93C-6A6C-A450F6B15B52', 'Lebanon', '2015-04-14 12:09:36', 'LB', '961', NULL, NULL),
(124, 'A969C15C-FDB8-B9BF-7A70-CA0B20F6E746', 'Saint Lucia', '2015-04-14 12:09:36', 'LC', '1758', NULL, NULL),
(125, 'D3A607AA-9E18-3D77-0504-8FB3762B08E9', 'Liechtenstein', '2015-04-14 12:09:36', 'LI', '423', NULL, NULL),
(126, '08186EF5-A816-5F3F-6334-2ACAFFC1036F', 'Sri Lanka', '2015-04-14 12:09:36', 'LK', '94', NULL, NULL),
(127, 'FEB0132D-0FA3-0A05-3088-59E88DFB6FCC', 'Liberia', '2015-04-14 12:09:36', 'LR', '231', NULL, NULL),
(128, 'D82F3778-BA0B-F2D7-87F1-F455816C0B10', 'Lesotho', '2015-04-14 12:09:36', 'LS', '266', NULL, NULL),
(129, 'ACC7107B-FEE4-C49E-AB16-5BBADE9707BB', 'Lithuania', '2015-04-14 12:09:36', 'LT', '370', NULL, NULL),
(130, 'D46FBEE9-CA64-2513-460C-6DE7B82E70AD', 'Luxembourg', '2015-04-14 12:09:36', 'LU', '352', NULL, NULL),
(131, 'EF9EF912-DBDC-2A60-3ABA-8F6413AB376C', 'Latvia', '2015-04-14 12:09:36', 'LV', '371', NULL, NULL),
(132, '331657A7-D80A-E3D9-306B-7B04580BE97A', 'Libya', '2015-04-14 12:09:36', 'LY', '218', NULL, NULL),
(133, '6F6551A5-A0D2-9614-2570-DB098D41795B', 'Morocco', '2015-04-14 12:09:36', 'MA', '212', NULL, NULL),
(134, 'D2C3C719-CFEF-92F9-1C75-4674404E2129', 'Monaco', '2015-04-14 12:09:36', 'MC', '377', NULL, NULL),
(135, 'AF24CA6E-08CF-9103-A408-198419511606', 'Moldova', '2015-04-14 12:09:36', 'MD', '373', NULL, NULL),
(136, '0B9CDE3D-E309-F36C-6C92-7A5A3CDB5C78', 'Montenegro', '2015-04-14 12:09:36', 'ME', '382', NULL, NULL),
(137, '7E7C60D7-8187-45FF-5856-FD4FE0A9F7F2', 'Saint Martin', '2015-04-14 12:09:36', 'MF', '1599', NULL, NULL),
(138, 'D0D90087-2CB8-BBF9-A0A7-7B9F83F0842A', 'Madagascar', '2015-04-14 12:09:36', 'MG', '261', NULL, NULL),
(139, '2148A143-2703-2688-50AC-4D449CC478C6', 'Marshall Islands', '2015-04-14 12:09:36', 'MH', '692', NULL, NULL),
(140, '4EDCA486-8363-D905-2223-0DD536C64FB1', 'Macedonia', '2015-04-14 12:09:36', 'MK', '389', NULL, NULL),
(141, 'D10BC835-779F-63B5-CD7F-77715C93EF5B', 'Mali', '2015-04-14 12:09:36', 'ML', '223', NULL, NULL),
(142, 'C6DE57ED-3F9E-5ECE-BED8-750D635B32D6', 'Burma (Myanmar)', '2015-04-14 12:09:36', 'MM', '95', NULL, NULL),
(143, '79B936B1-2C70-1B2B-CF22-5DF0EDA7BFF6', 'Mongolia', '2015-04-14 12:09:36', 'MN', '976', NULL, NULL),
(144, '340E0027-3A88-B6EF-1389-9830FF0111A1', 'Macau', '2015-04-14 12:09:36', 'MO', '853', NULL, NULL),
(145, '79F9CD19-DD9D-215E-C834-6896D595D1DB', 'Northern Mariana Islands', '2015-04-14 12:09:36', 'MP', '1670', NULL, NULL),
(146, '82B9D34C-D138-D44F-C78F-66E27B0B9DB5', 'Martinique', '2015-04-14 12:09:36', 'MQ', '', NULL, NULL),
(147, 'DE5DF1CD-0634-464F-0417-6E78249A9EFF', 'Mauritania', '2015-04-14 12:09:36', 'MR', '222', NULL, NULL),
(148, '6185D85F-EFD1-F321-5C88-FD92070CC6F9', 'Montserrat', '2015-04-14 12:09:36', 'MS', '1664', NULL, NULL),
(149, 'E06F0201-CA6B-EF55-EE95-7422AE9455EA', 'Malta', '2015-04-14 12:09:36', 'MT', '356', NULL, NULL),
(150, 'FB9AE8C0-1A45-2E86-6787-73467681C533', 'Mauritius', '2015-04-14 12:09:36', 'MU', '230', NULL, NULL),
(151, 'CCCFD4DB-F847-EFB5-A954-95C3E84C8810', 'Maldives', '2015-04-14 12:09:36', 'MV', '960', NULL, NULL),
(152, 'BAD2B0BE-60A9-CBF1-8650-F709F3F71937', 'Malawi', '2015-04-14 12:09:36', 'MW', '265', NULL, NULL),
(153, '8FB4F911-221D-C172-CD4A-2E3DDFC91E31', 'Mexico', '2015-04-14 12:09:36', 'MX', '52', NULL, NULL),
(154, '21DE1250-CA05-4ABE-5402-5AF7CEDEF190', 'Malaysia', '2015-04-14 12:09:36', 'MY', '60', NULL, NULL),
(155, '05CBFC51-7A5E-C473-BD2D-64E99EEF31AE', 'Mozambique', '2015-04-14 12:09:36', 'MZ', '258', NULL, NULL),
(156, '0CAA4FA5-DC6D-601A-001C-6D44E0DC5317', 'Namibia', '2015-04-14 12:09:36', 'NA', '264', NULL, NULL),
(157, '66330F5B-F3BC-C59D-E138-81AD487DCF5E', 'New Caledonia', '2015-04-14 12:09:36', 'NC', '687', NULL, NULL),
(158, 'D691B3AE-3239-514F-3A7C-82167837EA79', 'Niger', '2015-04-14 12:09:36', 'NE', '227', NULL, NULL),
(159, '0F9225AD-F626-4D0B-6201-E299B8BD215A', 'Norfolk Island', '2015-04-14 12:09:36', 'NF', '', NULL, NULL),
(160, '146B312A-59D0-71F1-FE10-6DF2E9FF3B13', 'Nigeria', '2015-04-14 12:09:36', 'NG', '234', NULL, NULL),
(161, 'D1B612B1-9C6B-C0FA-D185-9EF37FDD5B6B', 'Nicaragua', '2015-04-14 12:09:36', 'NI', '505', NULL, NULL),
(162, 'DBAE55F1-92C1-618E-32DD-FCFBCA5287F2', 'Netherlands', '2015-04-14 12:09:36', 'NL', '31', NULL, NULL),
(163, 'AA1566AC-5FBB-4165-5297-E3D1F56D23A2', 'Norway', '2015-04-14 12:09:36', 'NO', '47', NULL, NULL),
(164, '4BF12324-809E-BB44-C6B9-B7FCA9DC0160', 'Nepal', '2015-04-14 12:09:36', 'NP', '977', NULL, NULL),
(165, 'BE8F1645-08F9-9FBD-5885-1C0C6BC93848', 'Niue', '2015-04-14 12:09:36', 'NU', '683', NULL, NULL),
(166, '8761839C-0257-21D2-C497-382E5888F299', 'New Zealand', '2015-04-14 12:09:36', 'NZ', '64', NULL, NULL),
(167, '8AAA2CE8-5DDF-EE89-F73E-4757ED7AC246', 'Oman', '2015-04-14 12:09:36', 'OM', '968', NULL, NULL),
(168, 'CFFD5046-148C-6ED1-B68E-7A0FD7C591B7', 'Panama', '2015-04-14 12:09:36', 'PA', '507', NULL, NULL),
(169, 'CBF62F2B-70CD-EA41-2256-E45675C78C03', 'Peru', '2015-04-14 12:09:36', 'PE', '51', NULL, NULL),
(170, '6503A050-3EA4-38FA-FCE8-992DCE1B590B', 'French Polynesia', '2015-04-14 12:09:36', 'PF', '689', NULL, NULL),
(171, 'BA0C9E60-2EFE-AD8E-C0E7-29FCA7267DF5', 'Papua New Guinea', '2015-04-14 12:09:36', 'PG', '675', NULL, NULL),
(172, '88E336DC-5D75-752D-C77F-93A42D5B7C03', 'Philippines', '2015-04-14 12:09:36', 'PH', '63', NULL, NULL),
(173, '55FE4DF8-9BB2-126B-1F00-4334F8F7C640', 'Pakistan', '2015-04-14 12:09:36', 'PK', '92', NULL, NULL),
(174, '91DD425D-10F6-0FAC-73D3-5E3F5EFC86A2', 'Poland', '2015-04-14 12:09:36', 'PL', '48', NULL, NULL),
(175, '24354927-BE69-9B63-7324-7AE896674FF6', 'Saint Pierre and Miquelon', '2015-04-14 12:09:36', 'PM', '508', NULL, NULL),
(176, 'A21AA655-6CF5-A7A2-0CF3-374E511B7516', 'Pitcairn Islands', '2015-04-14 12:09:36', 'PN', '870', NULL, NULL),
(177, '7A0DF8B2-C5EC-FC58-9FC4-63FEC95F2DB9', 'Puerto Rico', '2015-04-14 12:09:36', 'PR', '1', NULL, NULL),
(178, '2BEE3A29-B3C8-7FE8-95F5-5DA81ECE0E75', 'State of Palestine', '2015-04-14 12:09:36', 'PS', '', NULL, NULL),
(179, '3BB8EFB5-BB65-F239-28B9-9B38E8FE83AE', 'Portugal', '2015-04-14 12:09:36', 'PT', '351', NULL, NULL),
(180, '7DFEFB58-159B-34CE-7B6E-5F5F74C0ED0B', 'Palau', '2015-04-14 12:09:36', 'PW', '680', NULL, NULL),
(181, '4E63C338-52F7-D693-39C8-6D9B09ECD5A8', 'Paraguay', '2015-04-14 12:09:36', 'PY', '595', NULL, NULL),
(182, '20319E02-E2D1-2FB9-B2B9-7CF8B7506DDF', 'Qatar', '2015-04-14 12:09:36', 'QA', '974', NULL, NULL),
(183, '0DF59336-53F1-F7C7-AB18-8DBF084DA125', 'Réunion', '2015-04-14 12:09:36', 'RE', '', NULL, NULL),
(184, 'E40912F1-CC15-4F2A-D8D1-FDC335CBC8CA', 'Romania', '2015-04-14 12:09:36', 'RO', '40', NULL, NULL),
(185, '38AC3FA4-283A-B36C-DC3D-1B59E7052A25', 'Serbia', '2015-04-14 12:09:36', 'RS', '381', NULL, NULL),
(186, '18A6D74E-6BE8-4CC8-8473-28EF91B436B2', 'Russia', '2015-04-14 12:09:36', 'RU', '7', NULL, NULL),
(187, '5E1EAB16-2E2F-39D3-0B0E-BF709AC39056', 'Rwanda', '2015-04-14 12:09:36', 'RW', '250', NULL, NULL),
(188, 'FDAB4E51-45A0-E5DF-1152-5DEAEC73C3AB', 'Saudi Arabia', '2015-04-14 12:09:36', 'SA', '966', NULL, NULL),
(189, 'CF21FB5C-9723-94F7-9F2B-F45CCAFC260D', 'Solomon Islands', '2015-04-14 12:09:36', 'SB', '677', NULL, NULL),
(190, '93C95D15-F10E-B87A-81DE-E9AAD84FC53A', 'Seychelles', '2015-04-14 12:09:36', 'SC', '248', NULL, NULL),
(191, '16302452-E1A6-D22C-5C99-133C48B5C980', 'Sudan', '2015-04-14 12:09:36', 'SD', '249', NULL, NULL),
(192, '472AA972-37BF-1FCF-5B13-03EAE9434088', 'Sweden', '2015-04-14 12:09:36', 'SE', '46', NULL, NULL),
(193, 'B2251D82-D868-DEAE-C811-4064951956F7', 'Singapore', '2015-04-14 12:09:36', 'SG', '65', NULL, NULL),
(194, 'F453E634-1155-9BCD-D903-08BEEC64C0A8', 'Saint Helena', '2015-04-14 12:09:36', 'SH', '290', NULL, NULL),
(195, 'B3D4C1FF-8E1D-DEEE-9A1A-39C83008F889', 'Slovenia', '2015-04-14 12:09:36', 'SI', '386', NULL, NULL),
(196, '8BF3EE1A-9967-AEDD-BA78-17C4087B28D9', 'Svalbard', '2015-04-14 12:09:36', 'SJ', '', NULL, NULL),
(197, '6FFA1E78-2CB2-B1CF-9D58-E0C9DEDA18AC', 'Slovakia', '2015-04-14 12:09:36', 'SK', '421', NULL, NULL),
(198, 'D6A4C632-C93A-839F-B09E-5480C4FAF1AD', 'Sierra Leone', '2015-04-14 12:09:36', 'SL', '232', NULL, NULL),
(199, '3DF96067-1DB6-B7CC-84B9-BAB7101F7131', 'San Marino', '2015-04-14 12:09:36', 'SM', '378', NULL, NULL),
(200, '2F0BC615-1C65-C7AA-47E8-9B5CA054D867', 'Senegal', '2015-04-14 12:09:36', 'SN', '221', NULL, NULL),
(201, 'C561F1FE-B072-5973-1DEC-F67D965DE27E', 'Somalia', '2015-04-14 12:09:36', 'SO', '252', NULL, NULL),
(202, '0775258C-EDC1-135D-E35C-01BD85F45F29', 'Suriname', '2015-04-14 12:09:36', 'SR', '597', NULL, NULL),
(203, 'AD0BAC3A-1DA4-23DA-0010-431A279304BE', 'Sao Tome and Principe', '2015-04-14 12:09:36', 'SS', '239', NULL, NULL),
(204, 'A4BDF3BD-B7F1-1B9B-CD98-A0C78ED53511', 'El Salvador', '2015-04-14 12:09:36', 'ST', '503', NULL, NULL),
(205, 'F4CEADD9-25F5-45F2-2E19-5B1795CE9D69', 'El Salvador', '2015-04-14 12:09:36', 'SV', '503', NULL, NULL),
(206, '46AD5507-C8B7-9F6D-571A-9E6E1C044CD6', 'Sint Maarten', '2015-04-14 12:09:36', 'SX', '', NULL, NULL),
(207, '3B28BF51-D190-F7CE-1BBA-49F72481AE3B', 'Syria', '2015-04-14 12:09:36', 'SY', '963', NULL, NULL),
(208, '1C48EC65-1073-25CD-5F53-7E4D22282B1B', 'Swaziland', '2015-04-14 12:09:36', 'SZ', '268', NULL, NULL),
(209, 'D3C33017-0BAE-B451-1190-B5A9A6D81265', 'Turks and Caicos Islands', '2015-04-14 12:09:36', 'TC', '1649', NULL, NULL),
(210, '436517D3-FF50-05BE-04A4-6314683C29BF', 'Chad', '2015-04-14 12:09:36', 'TD', '235', NULL, NULL),
(211, '373E212C-A17A-3D03-ACB3-588E2ECE1120', 'French Southern Territories', '2015-04-14 12:09:36', 'TF', '', NULL, NULL),
(212, '1DD74013-D596-D740-60F5-E007CFE9EE59', 'Togo', '2015-04-14 12:09:36', 'TG', '228', NULL, NULL),
(213, 'BF1DDCD3-0F3A-A81E-0508-910B20ED3822', 'Thailand', '2015-04-14 12:09:36', 'TH', '66', NULL, NULL),
(214, 'FB3A6E3C-53A9-CD6C-0F7C-302AB483B4BD', 'Tajikistan', '2015-04-14 12:09:36', 'TJ', '992', NULL, NULL),
(215, 'C343A6AB-0FAD-E093-7AF3-9589F5E58F64', 'Timor-Leste', '2015-04-14 12:09:36', 'TL', '670', NULL, NULL),
(216, 'DD3F11FD-CE04-AE45-D4DF-CB1324DDE122', 'Turkmenistan', '2015-04-14 12:09:36', 'TM', '993', NULL, NULL),
(217, '0AEF23A3-F684-B964-4D93-B507C40B66B4', 'Tunisia', '2015-04-14 12:09:36', 'TN', '216', NULL, NULL),
(218, 'A0662AD7-4934-E321-563F-6476311DD70C', 'Tonga', '2015-04-14 12:09:36', 'TO', '676', NULL, NULL),
(219, '5D0ECEE1-03F5-6D19-F5F3-F07F186DDF04', 'Turkey', '2015-04-14 12:09:36', 'TR', '90', NULL, NULL),
(220, 'F468D4C0-D571-5462-D0F1-6F0E4064AF46', 'Trinidad and Tobago', '2015-04-14 12:09:36', 'TT', '1868', NULL, NULL),
(221, 'BD92ECEC-C1D0-2516-23BF-75D5C2B05988', 'Tuvalu', '2015-04-14 12:09:36', 'TV', '688', NULL, NULL),
(222, 'C378CD23-31C4-6D56-EBA9-C38D38F74068', 'Taiwan', '2015-04-14 12:09:36', 'TW', '886', NULL, NULL),
(223, '11BAD1B7-D5B5-6F57-AE04-F483B2DEDAAB', 'Tanzania', '2015-04-14 12:09:36', 'TZ', '255', NULL, NULL),
(224, '4E7C6962-8A60-18F5-6380-6178B1BD4D1A', 'Ukraine', '2015-04-14 12:09:36', 'UA', '380', NULL, NULL),
(225, '2795DDE4-B42F-E010-4444-6F9AD1F42E87', 'Uganda', '2015-04-14 12:09:36', 'UG', '256', NULL, NULL),
(226, 'EF77733B-A972-EC78-8799-0BACF0ABF529', 'United States', '2015-04-14 12:09:36', 'US', '1', NULL, NULL),
(227, 'B1395F88-00C0-939B-DDFA-9DCBFB467EA4', 'Uruguay', '2015-04-14 12:09:36', 'UY', '598', NULL, NULL),
(228, '81E0BAA8-C899-C67F-9A1C-7F93971F181D', 'Uzbekistan', '2015-04-14 12:09:36', 'UZ', '998', NULL, NULL),
(229, '2ED293A8-00CF-E7F0-CA85-771A46E9F0B1', 'Holy See (Vatican City)', '2015-04-14 12:09:36', 'VA', '39', NULL, NULL),
(230, 'B34513B1-18A0-6F0F-9F93-5EBF96B73ADB', 'Saint Vincent and the Grenadines', '2015-04-14 12:09:36', 'VC', '1784', NULL, NULL),
(231, 'B4F3DA05-56D3-25AE-F8A9-8506B67C9004', 'Venezuela', '2015-04-14 12:09:36', 'VE', '58', NULL, NULL),
(232, '301B703B-B60C-4652-FB06-19CD778F0C74', 'British Virgin Islands', '2015-04-14 12:09:36', 'VG', '1284', NULL, NULL),
(233, 'C4ECE65F-CDFC-F50E-DCD9-3DB7CAB7C95E', 'US Virgin Islands', '2015-04-14 12:09:36', 'VI', '1340', NULL, NULL),
(234, 'C7245281-9AEA-4F60-73E4-0582061C77E9', 'Vietnam', '2015-04-14 12:09:36', 'VN', '84', NULL, NULL),
(235, 'BD92A44B-875F-79D2-3E12-D5175612D928', 'Vanuatu', '2015-04-14 12:09:36', 'VU', '678', NULL, NULL),
(236, 'E325ABAA-4150-836C-061D-6679EFEF3595', 'Wallis and Futuna', '2015-04-14 12:09:36', 'WF', '681', NULL, NULL),
(237, 'D8432DE9-535D-E306-0741-835AC0420A5B', 'Samoa', '2015-04-14 12:09:36', 'WS', '685', NULL, NULL),
(238, 'B133FA3B-7130-B4AF-373E-DEB720102D9B', 'Kosovo', '2015-04-14 12:09:36', 'XK', '', NULL, NULL),
(239, '3ABF1436-FAE0-3FD9-8948-501028332B17', 'Yemen', '2015-04-14 12:09:36', 'YE', '967', NULL, NULL),
(240, '7FA28C16-AE62-FBC2-7CEF-A5E4B71B826A', 'Mayotte', '2015-04-14 12:09:36', 'YT', '262', NULL, NULL),
(241, '38690943-EB49-39BB-09C7-1F987A3DDB85', 'South Africa', '2015-04-14 12:09:36', 'ZA', '27', NULL, NULL),
(242, '99795989-6422-28FE-D1A6-054605E86075', 'Zambia', '2015-04-14 12:09:36', 'ZM', '260', NULL, NULL),
(243, 'A6852D18-8C62-9B94-7F4B-2E65FE64EE88', 'Zimbabwe', '2015-04-14 12:09:36', 'ZW', '263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

DROP TABLE IF EXISTS `COUNTRY`;
CREATE TABLE IF NOT EXISTS `COUNTRY` (
  `COUNTRY_ID` int(10) NOT NULL,
  `COUNTRY_GUID` varchar(48) NOT NULL,
  `COUNTRY_NAME` varchar(64) NOT NULL,
  `LM_DATE` datetime NOT NULL,
  `COUNTRY_CODE` varchar(8) DEFAULT NULL,
  `COUNTRY_PHONE_CODE` varchar(8) DEFAULT NULL,
  `LATITUDE` float(18,5) DEFAULT NULL,
  `LONGITUDE` float(18,5) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `AK_COUNTRY__GUID` (`COUNTRY_GUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`COUNTRY_ID`, `COUNTRY_GUID`, `COUNTRY_NAME`, `LM_DATE`, `COUNTRY_CODE`, `COUNTRY_PHONE_CODE`, `LATITUDE`, `LONGITUDE`) VALUES
(1, '25459617-F4D3-EB0A-6777-2D7CB5F876B9', 'Andorra', '2016-03-29 12:38:24', 'AD', '376', NULL, NULL),
(2, '24E45AEB-7FD7-783A-2008-F5A35CA064F7', 'United Arab Emirates', '2016-03-29 12:38:24', 'AE', '971', NULL, NULL),
(3, '3F039DE6-2908-4731-96FE-041E04A7E962', 'Afghanistan', '2016-03-29 12:38:24', 'AF', '93', NULL, NULL),
(4, 'F1FEB2CF-618A-59D0-0DDC-B4F8B4ED976E', 'Antigua and Barbuda', '2016-03-29 12:38:24', 'AG', '1268', NULL, NULL),
(5, '909E8639-771A-D2CD-4405-7A8368A9D04A', 'Anguilla', '2016-03-29 12:38:24', 'AI', '1264', NULL, NULL),
(6, '35173F09-0E98-0C3E-77A6-2AD8F8F5DE89', 'Albania', '2016-03-29 12:38:24', 'AL', '355', NULL, NULL),
(7, '632C5757-664D-108D-802F-3F62E78F41B9', 'Armenia', '2016-03-29 12:38:24', 'AM', '374', NULL, NULL),
(8, '33C045E6-E7F0-6886-FE2D-46C5EAA79042', 'Angola', '2016-03-29 12:38:24', 'AO', '244', NULL, NULL),
(9, '8E7E291E-B21C-ABAC-7791-4733C412D3CA', 'Argentina', '2016-03-29 12:38:24', 'AR', '54', NULL, NULL),
(10, 'F4EC01D6-D793-EE6C-58EA-D66DABE0E15F', 'American Samoa', '2016-03-29 12:38:24', 'AS', '1684', NULL, NULL),
(11, 'DA24D62E-C926-A91D-E11A-96AAD3E5DDE1', 'Austria', '2016-03-29 12:38:24', 'AT', '43', NULL, NULL),
(12, 'F193E97D-B13C-9506-D976-CCB52BC864BF', 'Australia', '2016-03-29 12:38:24', 'AU', '61', NULL, NULL),
(13, '363B89ED-E346-3EEE-67E1-77A9ACA104BE', 'Aruba', '2016-03-29 12:38:24', 'AW', '297', NULL, NULL),
(14, '0129859C-6BC4-C7C6-F0E7-212E8BFFE04F', 'Åland Islands', '2016-03-29 12:38:24', 'AX', '358', NULL, NULL),
(15, '96C23A30-8A7D-D545-6E33-1EF6070EAA2A', 'Azerbaijan', '2016-03-29 12:38:24', 'AZ', '994', NULL, NULL),
(16, '1C37B968-7D44-2AED-7171-116232E0376F', 'Bosnia and Herzegovina', '2016-03-29 12:38:24', 'BA', '387', NULL, NULL),
(17, '784A4C7F-8B44-353A-8B27-996E1B38791C', 'Barbados', '2016-03-29 12:38:24', 'BB', '1246', NULL, NULL),
(18, '735D20D8-45D8-B861-6B2B-9F1B22F86447', 'Bangladesh', '2016-03-29 12:38:24', 'BD', '880', NULL, NULL),
(19, '3B71F5B5-2AC2-9154-404D-191ABFBC4729', 'Belgium', '0000-00-00 00:00:00', '2016-03-', '32', NULL, NULL),
(20, 'B5CB258B-4F64-D109-E9D5-60A78ED0A637', 'Burkina Faso', '2016-03-29 12:38:24', 'BF', '226', NULL, NULL),
(21, '1B6E6DAD-F17E-C6C0-61A4-41B20394BDBE', 'Bulgaria', '2016-03-29 12:38:24', 'BG', '359', NULL, NULL),
(22, '6AB06D58-6177-06A7-0937-AA363E22FE30', 'Bahrain', '2016-03-29 12:38:24', 'BH', '973', NULL, NULL),
(23, 'D1581E51-B2B3-8078-F5EC-8463B5484393', 'Burundi', '2016-03-29 12:38:24', 'BI', '257', NULL, NULL),
(24, '28966864-22F6-35BD-5145-1B79E5FE95C0', 'Benin', '2016-03-29 12:38:24', 'BJ', '229', NULL, NULL),
(25, 'A0910149-4E0D-D1EF-9280-90C7CA4F713A', 'Saint Barthelemy', '2016-03-29 12:38:24', 'BL', '590', NULL, NULL),
(26, 'D10E4FAB-B35B-36E2-1B11-BD87D19D493E', 'Bermuda', '2016-03-29 12:38:24', 'BM', '1441', NULL, NULL),
(27, '2EF66919-5A42-5E57-9540-254370BCFA7F', 'Brunei', '2016-03-29 12:38:24', 'BN', '673', NULL, NULL),
(28, 'B17DC404-815D-16D1-3EE6-01CFF6108DA6', 'Bolivia', '2016-03-29 12:38:24', 'BO', '597', NULL, NULL),
(29, '1677F424-62EB-CDCA-59AE-82E6BE4CD643', 'Bonaire, Sint Eustatius and Saba', '2016-03-29 12:38:24', 'BQ', '599', NULL, NULL),
(30, '364A13CD-9DD4-EB69-B481-CAF5C67AD0F3', 'Brazil', '2016-03-29 12:38:24', 'BR', '55', NULL, NULL),
(31, '3287034B-9EF0-21E6-290F-4C1435488B14', 'Bahamas', '2016-03-29 12:38:24', 'BS', '1242', NULL, NULL),
(32, '3ECFA6CC-B473-444F-60B2-F2C325726A59', 'Bhutan', '2016-03-29 12:38:24', 'BT', '975', NULL, NULL),
(33, '5CB7E864-AA89-D6A6-6483-5A0B4BF4ECE7', 'Botswana', '2016-03-29 12:38:24', 'BW', '267', NULL, NULL),
(34, '549B645E-602C-E8DC-E661-0BC58B872507', 'Belarus', '2016-03-29 12:38:24', 'BY', '375', NULL, NULL),
(35, '6EBC4137-4D87-7153-6380-1917E5AB5CC8', 'Belize', '2016-03-29 12:38:24', 'BZ', '501', NULL, NULL),
(36, '62B9E5BF-CD36-7BF9-8C86-7145E0BB87C3', 'Canada', '2016-03-29 12:38:24', 'CA', '1', NULL, NULL),
(37, 'CE623909-C6BB-FBDB-AAC4-E93B1905A157', 'Cocos (Keeling) Islands', '2016-03-29 12:38:24', 'CC', '61', NULL, NULL),
(38, 'EE5B1165-2914-906F-FC6F-CAAE4D346925', 'Democratic Republic of the Congo', '2016-03-29 12:38:24', 'CD', '243', NULL, NULL),
(39, '2DAEE215-8156-00B0-9BCF-2A11D900E923', 'Central African Republic', '2016-03-29 12:38:24', 'CF', '236', NULL, NULL),
(40, 'EDADCB74-E7C3-1081-29BA-4F59B60FF6B2', 'Republic of the Congo', '2016-03-29 12:38:24', 'CG', '242', NULL, NULL),
(41, '5024DE57-E5BB-5A9D-917D-26A1749B8D60', 'Switzerland', '2016-03-29 12:38:24', 'CH', '41', NULL, NULL),
(42, 'ABA5802C-8FE2-211F-8002-BB96E7A364DB', 'Ivory Coast', '2016-03-29 12:38:24', 'CI', '225', NULL, NULL),
(43, '00C8EB2B-8085-1D54-BE4D-35EF87A255E6', 'Cook Islands', '2016-03-29 12:38:24', 'CK', '682', NULL, NULL),
(44, '834BD2B5-93D2-17A7-91BE-CE4DEEC43366', 'Chile', '2016-03-29 12:38:24', 'CL', '56', NULL, NULL),
(45, '28A21890-3B5D-8B00-9EBE-DED06FA1ECFB', 'Cameroon', '2016-03-29 12:38:24', 'CM', '237', NULL, NULL),
(46, 'CE0E5440-B3C0-12A5-1BA3-2387A270C634', 'China', '2016-03-29 12:38:24', 'CN', '86', NULL, NULL),
(47, '622727AA-9C09-1CBB-9C8F-5F23E4F6E7AF', 'Colombia', '2016-03-29 12:38:24', 'CO', '57', NULL, NULL),
(48, 'D3860772-0731-CCE8-3F3C-8DFC229DA443', 'Costa Rica', '2016-03-29 12:38:24', 'CR', '506', NULL, NULL),
(49, 'A394D714-E73A-8327-EB0C-C1A03AD5B75C', 'Cuba', '2016-03-29 12:38:24', 'CU', '53', NULL, NULL),
(50, '38DE8E73-B254-F18B-098D-FA063DB064DE', 'Cape Verde', '2016-03-29 12:38:24', 'CV', '238', NULL, NULL),
(51, 'E05C1047-00F5-9447-4AA4-F4D231A60CDF', 'Christmas Island', '2016-03-29 12:38:24', 'CX', '61', NULL, NULL),
(52, 'E29DE5EF-A293-9921-DB69-1AE56C94789C', 'Curaçao', '2016-03-29 12:38:24', 'CW', '', NULL, NULL),
(53, '91F38946-68B4-F218-A93C-87F8018AD49A', 'Cyprus', '2016-03-29 12:38:24', 'CY', '357', NULL, NULL),
(54, '673F53C2-5C02-9B22-E956-29879756BF15', 'Czech Republic', '2016-03-29 12:38:24', 'CZ', '420', NULL, NULL),
(55, '60C952C3-0504-DC75-9E1D-499EC374B0F0', 'Germany', '2016-03-29 12:38:24', 'DE', '49', NULL, NULL),
(56, '1A3A54C9-F2E1-3E5F-079C-999D110E8EEC', 'Djibouti', '2016-03-29 12:38:24', 'DJ', '253', NULL, NULL),
(57, '7547B15D-E21A-4A2E-5F9B-1DC727C53F4A', 'Denmark', '2016-03-29 12:38:24', 'DK', '45', NULL, NULL),
(58, '7E2CF84D-1879-374A-6A41-F03318A3FB25', 'Dominica', '2016-03-29 12:38:24', 'DM', '1767', NULL, NULL),
(59, 'A07E10D2-DB62-436D-E203-A884ED728CBC', 'Dominican Republic', '2016-03-29 12:38:24', 'DO', '1809', NULL, NULL),
(60, '6CFEBD8D-4ADA-B4FF-9160-90D0C2B2118E', 'Algeria', '2016-03-29 12:38:24', 'DZ', '213', NULL, NULL),
(61, 'BC4A1696-47D1-2617-ECF6-824BADEF4C4E', 'Ecuador', '2016-03-29 12:38:24', 'EC', '593', NULL, NULL),
(62, 'AFF8DFA6-F5EE-6A43-DC59-8213D20E198A', 'Estonia', '2016-03-29 12:38:24', 'EE', '372', NULL, NULL),
(63, 'ED2AC84C-40C7-F14D-378E-16EB10094294', 'Egypt', '2016-03-29 12:38:24', 'EG', '20', NULL, NULL),
(64, '25C7A12B-226A-8989-F33B-98FEAB37B18F', 'Western Sahara', '2016-03-29 12:38:24', 'EH', '', NULL, NULL),
(65, '0C0F61A7-CED3-882E-440F-0B8B6ED939DB', 'Eritrea', '2016-03-29 12:38:24', 'ER', '291', NULL, NULL),
(66, '81387FC3-0AD1-42E7-241E-2AA939641B95', 'Spain', '2016-03-29 12:38:24', 'ES', '34', NULL, NULL),
(67, '7D8BD697-9E59-4861-4BE9-61A8AD8B4936', 'Ethiopia', '2016-03-29 12:38:24', 'ET', '251', NULL, NULL),
(68, '561A54FF-8F65-8B92-483E-2DBE528429A4', 'Finland', '2016-03-29 12:38:24', 'FI', '358', NULL, NULL),
(69, '4D930C83-DEFD-ADEA-0D64-501B4E4911CF', 'Fiji', '2016-03-29 12:38:24', 'FJ', '679', NULL, NULL),
(70, '3EF989F2-6700-B8DA-F2B5-B4A831B30BCD', 'Falkland Islands', '2016-03-29 12:38:24', 'FK', '500', NULL, NULL),
(71, '6E21E535-BF55-E53C-3CAC-7C2B621EF05B', 'Micronesia', '2016-03-29 12:38:24', 'FM', '691', NULL, NULL),
(72, '25F1AC03-B255-50A9-654C-E043D61E7DA1', 'Faroe Islands', '2016-03-29 12:38:24', 'FO', '298', NULL, NULL),
(73, '06A3DB9C-B358-74A7-BBA2-99F760FDE24E', 'France', '2016-03-29 12:38:24', 'FR', '33', NULL, NULL),
(74, '7D2D339B-5568-2B6C-28F6-1CAD95AE685E', 'Gabon', '2016-03-29 12:38:24', 'GA', '241', NULL, NULL),
(75, '73D1D5BB-571F-08E7-2A4F-4AB63AA9793C', 'United Kingdom', '2016-03-29 12:38:24', 'GB', '44', NULL, NULL),
(76, '52764C53-FF3F-BA7C-14BF-7E6262C26BB6', 'Grenada', '2016-03-29 12:38:24', 'GD', '1473', NULL, NULL),
(77, 'ABAFEB9B-9DB0-5261-4625-53C6A32A8392', 'Georgia', '2016-03-29 12:38:24', 'GE', '995', NULL, NULL),
(78, '93A6ABF8-C217-B219-0AEF-F63F51330113', 'French Guiana', '2016-03-29 12:38:24', 'GF', '', NULL, NULL),
(79, 'DD5B81B6-DF46-6B93-40DD-32B63B1C4482', 'Guernsey', '2016-03-29 12:38:24', 'GG', '', NULL, NULL),
(80, 'AE89DC78-DD22-0165-1F4A-37757DC2C6A6', 'Ghana', '2016-03-29 12:38:24', 'GH', '233', NULL, NULL),
(81, '691A673C-A72B-45C6-EBA5-AE4D48128B0C', 'Gibraltar', '2016-03-29 12:38:24', 'GI', '350', NULL, NULL),
(82, 'E1C9DDCE-DFC6-C80E-9E6D-2CFACD5A3EF3', 'Greenland', '2016-03-29 12:38:24', 'GL', '299', NULL, NULL),
(83, 'DC6434F3-07BD-D0AF-5EF1-021830DD761A', 'Gambia', '2016-03-29 12:38:24', 'GM', '220', NULL, NULL),
(84, '0EB68AA9-0863-564B-E8B9-7BE51B19C627', 'Guinea', '2016-03-29 12:38:24', 'GN', '224', NULL, NULL),
(85, '64BAD731-A2B6-D774-4382-6A3F69041EB2', 'Guadeloupe ', '2016-03-29 12:38:24', 'GP', '', NULL, NULL),
(86, '72FFFB07-88AA-6CA5-C9A1-664AAE69E39F', 'Equatorial Guinea', '2016-03-29 12:38:24', 'GQ', '240', NULL, NULL),
(87, 'EBC8E95D-EFA7-A62F-E9D0-1230876D82AD', 'Greece', '2016-03-29 12:38:24', 'GR', '30', NULL, NULL),
(88, '589A3D09-2DAA-54DD-B119-8A8D0CD9E9B1', 'South Georgia and the South Sandwich Islands', '2016-03-29 12:38:24', 'GS', '', NULL, NULL),
(89, '6119B99F-E4B7-0B13-45F3-293FD0A84862', 'Guatemala', '2016-03-29 12:38:24', 'GT', '502', NULL, NULL),
(90, '6BC5F673-1D11-85D4-FF9E-3C43604EC2D0', 'Guam', '2016-03-29 12:38:24', 'GU', '1671', NULL, NULL),
(91, 'D94C617D-E792-CAAF-2E00-5A8EEA208C8C', 'Guinea-Bissau', '2016-03-29 12:38:24', 'GW', '245', NULL, NULL),
(92, '9313337B-D700-D83C-CA29-5F48D8726308', 'Guyana', '2016-03-29 12:38:24', 'GY', '592', NULL, NULL),
(93, 'CEFBA783-88BA-FFDE-77F3-43B3FF801484', 'Hong Kong', '2016-03-29 12:38:24', 'HK', '852', NULL, NULL),
(94, 'CBA2E631-D4D1-B735-81D3-5DAC86AE8C76', 'Honduras', '2016-03-29 12:38:24', 'HN', '504', NULL, NULL),
(95, 'FEA02A43-5185-C6A7-A26C-935578D43E6D', 'Croatia', '2016-03-29 12:38:24', 'HR', '385', NULL, NULL),
(96, '02927AD4-8894-FE99-C9DD-E0E7F4DC63B1', 'Haiti', '2016-03-29 12:38:24', 'HT', '509', NULL, NULL),
(97, '42405C6A-097F-BAF2-93A6-86513986110A', 'Hungary', '2016-03-29 12:38:24', 'HU', '36', NULL, NULL),
(98, '79798E7A-4327-469A-5EC1-81319DDC1E90', 'Indonesia', '2016-03-29 12:38:24', 'ID', '62', NULL, NULL),
(99, '2A8985F3-8891-5685-A0FF-972A5DF8620B', 'Ireland', '2016-03-29 12:38:24', 'IE', '353', NULL, NULL),
(100, 'EEBDEB95-6B76-B2B0-F2C9-2BFB1499E9FD', 'Israel', '2016-03-29 12:38:24', 'IL', '972', NULL, NULL),
(101, '71739793-0365-6479-F9A2-9B6F57239816', 'Isle of Man', '2016-03-29 12:38:24', 'IM', '44', NULL, NULL),
(102, '18AC27F9-4025-C8CF-DA36-36004B0C5CF3', 'India', '2016-03-29 12:38:24', 'IN', '91', NULL, NULL),
(103, '01BB783C-2123-8D92-36E3-397F1E9D5F7D', 'Iraq', '2016-03-29 12:38:24', 'IQ', '964', NULL, NULL),
(104, '422B82CA-FC9F-6FFF-151E-E342CBD26A32', 'Iran', '2016-03-29 12:38:24', 'IR', '98', NULL, NULL),
(105, 'CD0DAF28-6A3C-0CE3-1A06-218A7AA11408', 'Iceland', '2016-03-29 12:38:24', 'IS', '354', NULL, NULL),
(106, '8BA4B4DC-9E82-331B-7EE2-6577413FCFDE', 'Italy', '2016-03-29 12:38:24', 'IT', '39', NULL, NULL),
(107, 'D8777867-1C0B-ACF1-337A-6DD4B68B902B', 'Jersey', '2016-03-29 12:38:24', 'JE', '', NULL, NULL),
(108, '0DEFE08A-DFF2-7222-F6BC-C10BB2C2B3E3', 'Jamaica', '2016-03-29 12:38:24', 'JM', '1876', NULL, NULL),
(109, '8864615C-5A8F-56C1-262C-97CB8739E154', 'Jordan', '2016-03-29 12:38:24', 'JO', '962', NULL, NULL),
(110, 'A8DFE7EB-BA50-DF73-C88A-EB7A83636C98', 'Japan', '2016-03-29 12:38:24', 'JP', '81', NULL, NULL),
(111, 'D6F5CF13-36E4-E7D7-A6AE-32D622E2E905', 'Kenya', '2016-03-29 12:38:24', 'KE', '254', NULL, NULL),
(112, '6C1BE74C-56D3-ADFE-B75E-4DD174378C3B', 'Kyrgyzstan', '2016-03-29 12:38:24', 'KG', '996', NULL, NULL),
(113, '88F59F28-C9DC-F8B5-0AA3-6EE2F5BA2680', 'Cambodia', '2016-03-29 12:38:24', 'KH', '855', NULL, NULL),
(114, '221ACA06-D996-AA61-8EF8-A883B5EF088D', 'Kiribati', '2016-03-29 12:38:24', 'KI', '686', NULL, NULL),
(115, '50711EC0-9C17-A53D-C8D5-7BFCB17B9F74', 'Comoros', '2016-03-29 12:38:24', 'KM', '269', NULL, NULL),
(116, '5A63C8A4-AED9-E465-C42D-6B35D815788E', 'Saint Kitts and Nevis', '2016-03-29 12:38:24', 'KN', '1869', NULL, NULL),
(117, 'E2231181-F5A7-9C0D-A07D-DF498953BDB7', 'North Korea', '2016-03-29 12:38:24', 'KP', '850', NULL, NULL),
(118, '51E443A4-BBB7-45B3-BCCB-5D900AAC9A10', 'South Korea', '2016-03-29 12:38:24', 'KR', '82', NULL, NULL),
(119, '163246AC-AF1E-7EF1-ABD7-CA7C76048C0D', 'Kuwait', '2016-03-29 12:38:24', 'KW', '965', NULL, NULL),
(120, '627EF7AE-33FA-CBB0-5165-B69DE5D88639', 'Cayman Islands', '2016-03-29 12:38:24', 'KY', '1345', NULL, NULL),
(121, '4AF2B679-80E6-AE7A-6F8C-E30BB82170CB', 'Kazakhstan', '2016-03-29 12:38:24', 'KZ', '7', NULL, NULL),
(122, '5B49382E-7792-4FB2-5841-BDF46D215FB1', 'Laos', '2016-03-29 12:38:24', 'LA', '856', NULL, NULL),
(123, '4F9A2D48-4692-A93C-6A6C-A450F6B15B52', 'Lebanon', '2016-03-29 12:38:24', 'LB', '961', NULL, NULL),
(124, 'A969C15C-FDB8-B9BF-7A70-CA0B20F6E746', 'Saint Lucia', '2016-03-29 12:38:24', 'LC', '1758', NULL, NULL),
(125, 'D3A607AA-9E18-3D77-0504-8FB3762B08E9', 'Liechtenstein', '2016-03-29 12:38:24', 'LI', '423', NULL, NULL),
(126, '08186EF5-A816-5F3F-6334-2ACAFFC1036F', 'Sri Lanka', '2016-03-29 12:38:24', 'LK', '94', NULL, NULL),
(127, 'FEB0132D-0FA3-0A05-3088-59E88DFB6FCC', 'Liberia', '2016-03-29 12:38:24', 'LR', '231', NULL, NULL),
(128, 'D82F3778-BA0B-F2D7-87F1-F455816C0B10', 'Lesotho', '2016-03-29 12:38:24', 'LS', '266', NULL, NULL),
(129, 'ACC7107B-FEE4-C49E-AB16-5BBADE9707BB', 'Lithuania', '2016-03-29 12:38:24', 'LT', '370', NULL, NULL),
(130, 'D46FBEE9-CA64-2513-460C-6DE7B82E70AD', 'Luxembourg', '2016-03-29 12:38:24', 'LU', '352', NULL, NULL),
(131, 'EF9EF912-DBDC-2A60-3ABA-8F6413AB376C', 'Latvia', '2016-03-29 12:38:24', 'LV', '371', NULL, NULL),
(132, '331657A7-D80A-E3D9-306B-7B04580BE97A', 'Libya', '2016-03-29 12:38:24', 'LY', '218', NULL, NULL),
(133, '6F6551A5-A0D2-9614-2570-DB098D41795B', 'Morocco', '2016-03-29 12:38:24', 'MA', '212', NULL, NULL),
(134, 'D2C3C719-CFEF-92F9-1C75-4674404E2129', 'Monaco', '2016-03-29 12:38:24', 'MC', '377', NULL, NULL),
(135, 'AF24CA6E-08CF-9103-A408-198419511606', 'Moldova', '2016-03-29 12:38:24', 'MD', '373', NULL, NULL),
(136, '0B9CDE3D-E309-F36C-6C92-7A5A3CDB5C78', 'Montenegro', '2016-03-29 12:38:24', 'ME', '382', NULL, NULL),
(137, '7E7C60D7-8187-45FF-5856-FD4FE0A9F7F2', 'Saint Martin', '2016-03-29 12:38:24', 'MF', '1599', NULL, NULL),
(138, 'D0D90087-2CB8-BBF9-A0A7-7B9F83F0842A', 'Madagascar', '2016-03-29 12:38:24', 'MG', '261', NULL, NULL),
(139, '2148A143-2703-2688-50AC-4D449CC478C6', 'Marshall Islands', '2016-03-29 12:38:24', 'MH', '692', NULL, NULL),
(140, '4EDCA486-8363-D905-2223-0DD536C64FB1', 'Macedonia', '2016-03-29 12:38:24', 'MK', '389', NULL, NULL),
(141, 'D10BC835-779F-63B5-CD7F-77715C93EF5B', 'Mali', '2016-03-29 12:38:24', 'ML', '223', NULL, NULL),
(142, 'C6DE57ED-3F9E-5ECE-BED8-750D635B32D6', 'Burma (Myanmar)', '2016-03-29 12:38:24', 'MM', '95', NULL, NULL),
(143, '79B936B1-2C70-1B2B-CF22-5DF0EDA7BFF6', 'Mongolia', '2016-03-29 12:38:24', 'MN', '976', NULL, NULL),
(144, '340E0027-3A88-B6EF-1389-9830FF0111A1', 'Macau', '2016-03-29 12:38:24', 'MO', '853', NULL, NULL),
(145, '79F9CD19-DD9D-215E-C834-6896D595D1DB', 'Northern Mariana Islands', '2016-03-29 12:38:24', 'MP', '1670', NULL, NULL),
(146, '82B9D34C-D138-D44F-C78F-66E27B0B9DB5', 'Martinique', '2016-03-29 12:38:24', 'MQ', '', NULL, NULL),
(147, 'DE5DF1CD-0634-464F-0417-6E78249A9EFF', 'Mauritania', '2016-03-29 12:38:24', 'MR', '222', NULL, NULL),
(148, '6185D85F-EFD1-F321-5C88-FD92070CC6F9', 'Montserrat', '2016-03-29 12:38:24', 'MS', '1664', NULL, NULL),
(149, 'E06F0201-CA6B-EF55-EE95-7422AE9455EA', 'Malta', '2016-03-29 12:38:24', 'MT', '356', NULL, NULL),
(150, 'FB9AE8C0-1A45-2E86-6787-73467681C533', 'Mauritius', '2016-03-29 12:38:24', 'MU', '230', NULL, NULL),
(151, 'CCCFD4DB-F847-EFB5-A954-95C3E84C8810', 'Maldives', '2016-03-29 12:38:24', 'MV', '960', NULL, NULL),
(152, 'BAD2B0BE-60A9-CBF1-8650-F709F3F71937', 'Malawi', '2016-03-29 12:38:24', 'MW', '265', NULL, NULL),
(153, '8FB4F911-221D-C172-CD4A-2E3DDFC91E31', 'Mexico', '2016-03-29 12:38:24', 'MX', '52', NULL, NULL),
(154, '21DE1250-CA05-4ABE-5402-5AF7CEDEF190', 'Malaysia', '2016-03-29 12:38:24', 'MY', '60', NULL, NULL),
(155, '05CBFC51-7A5E-C473-BD2D-64E99EEF31AE', 'Mozambique', '2016-03-29 12:38:24', 'MZ', '258', NULL, NULL),
(156, '0CAA4FA5-DC6D-601A-001C-6D44E0DC5317', 'Namibia', '2016-03-29 12:38:24', 'NA', '264', NULL, NULL),
(157, '66330F5B-F3BC-C59D-E138-81AD487DCF5E', 'New Caledonia', '2016-03-29 12:38:24', 'NC', '687', NULL, NULL),
(158, 'D691B3AE-3239-514F-3A7C-82167837EA79', 'Niger', '2016-03-29 12:38:24', 'NE', '227', NULL, NULL),
(159, '0F9225AD-F626-4D0B-6201-E299B8BD215A', 'Norfolk Island', '2016-03-29 12:38:24', 'NF', '', NULL, NULL),
(160, '146B312A-59D0-71F1-FE10-6DF2E9FF3B13', 'Nigeria', '2016-03-29 12:38:24', 'NG', '234', NULL, NULL),
(161, 'D1B612B1-9C6B-C0FA-D185-9EF37FDD5B6B', 'Nicaragua', '2016-03-29 12:38:24', 'NI', '505', NULL, NULL),
(162, 'DBAE55F1-92C1-618E-32DD-FCFBCA5287F2', 'Netherlands', '2016-03-29 12:38:24', 'NL', '31', NULL, NULL),
(163, 'AA1566AC-5FBB-4165-5297-E3D1F56D23A2', 'Norway', '2016-03-29 12:38:24', 'NO', '47', NULL, NULL),
(164, '4BF12324-809E-BB44-C6B9-B7FCA9DC0160', 'Nepal', '2016-03-29 12:38:24', 'NP', '977', NULL, NULL),
(165, 'BE8F1645-08F9-9FBD-5885-1C0C6BC93848', 'Niue', '2016-03-29 12:38:24', 'NU', '683', NULL, NULL),
(166, '8761839C-0257-21D2-C497-382E5888F299', 'New Zealand', '2016-03-29 12:38:24', 'NZ', '64', NULL, NULL),
(167, '8AAA2CE8-5DDF-EE89-F73E-4757ED7AC246', 'Oman', '2016-03-29 12:38:24', 'OM', '968', NULL, NULL),
(168, 'CFFD5046-148C-6ED1-B68E-7A0FD7C591B7', 'Panama', '2016-03-29 12:38:24', 'PA', '507', NULL, NULL),
(169, 'CBF62F2B-70CD-EA41-2256-E45675C78C03', 'Peru', '2016-03-29 12:38:24', 'PE', '51', NULL, NULL),
(170, '6503A050-3EA4-38FA-FCE8-992DCE1B590B', 'French Polynesia', '2016-03-29 12:38:24', 'PF', '689', NULL, NULL),
(171, 'BA0C9E60-2EFE-AD8E-C0E7-29FCA7267DF5', 'Papua New Guinea', '2016-03-29 12:38:24', 'PG', '675', NULL, NULL),
(172, '88E336DC-5D75-752D-C77F-93A42D5B7C03', 'Philippines', '2016-03-29 12:38:24', 'PH', '63', NULL, NULL),
(173, '55FE4DF8-9BB2-126B-1F00-4334F8F7C640', 'Pakistan', '2016-03-29 12:38:24', 'PK', '92', NULL, NULL),
(174, '91DD425D-10F6-0FAC-73D3-5E3F5EFC86A2', 'Poland', '2016-03-29 12:38:24', 'PL', '48', NULL, NULL),
(175, '24354927-BE69-9B63-7324-7AE896674FF6', 'Saint Pierre and Miquelon', '2016-03-29 12:38:24', 'PM', '508', NULL, NULL),
(176, 'A21AA655-6CF5-A7A2-0CF3-374E511B7516', 'Pitcairn Islands', '2016-03-29 12:38:24', 'PN', '870', NULL, NULL),
(177, '7A0DF8B2-C5EC-FC58-9FC4-63FEC95F2DB9', 'Puerto Rico', '2016-03-29 12:38:24', 'PR', '1', NULL, NULL),
(178, '2BEE3A29-B3C8-7FE8-95F5-5DA81ECE0E75', 'State of Palestine', '2016-03-29 12:38:24', 'PS', '', NULL, NULL),
(179, '3BB8EFB5-BB65-F239-28B9-9B38E8FE83AE', 'Portugal', '2016-03-29 12:38:24', 'PT', '351', NULL, NULL),
(180, '7DFEFB58-159B-34CE-7B6E-5F5F74C0ED0B', 'Palau', '2016-03-29 12:38:24', 'PW', '680', NULL, NULL),
(181, '4E63C338-52F7-D693-39C8-6D9B09ECD5A8', 'Paraguay', '2016-03-29 12:38:24', 'PY', '595', NULL, NULL),
(182, '20319E02-E2D1-2FB9-B2B9-7CF8B7506DDF', 'Qatar', '2016-03-29 12:38:24', 'QA', '974', NULL, NULL),
(183, '0DF59336-53F1-F7C7-AB18-8DBF084DA125', 'Réunion', '2016-03-29 12:38:24', 'RE', '', NULL, NULL),
(184, 'E40912F1-CC15-4F2A-D8D1-FDC335CBC8CA', 'Romania', '2016-03-29 12:38:24', 'RO', '40', NULL, NULL),
(185, '38AC3FA4-283A-B36C-DC3D-1B59E7052A25', 'Serbia', '2016-03-29 12:38:24', 'RS', '381', NULL, NULL),
(186, '18A6D74E-6BE8-4CC8-8473-28EF91B436B2', 'Russia', '2016-03-29 12:38:24', 'RU', '7', NULL, NULL),
(187, '5E1EAB16-2E2F-39D3-0B0E-BF709AC39056', 'Rwanda', '2016-03-29 12:38:24', 'RW', '250', NULL, NULL),
(188, 'FDAB4E51-45A0-E5DF-1152-5DEAEC73C3AB', 'Saudi Arabia', '2016-03-29 12:38:24', 'SA', '966', NULL, NULL),
(189, 'CF21FB5C-9723-94F7-9F2B-F45CCAFC260D', 'Solomon Islands', '2016-03-29 12:38:24', 'SB', '677', NULL, NULL),
(190, '93C95D15-F10E-B87A-81DE-E9AAD84FC53A', 'Seychelles', '2016-03-29 12:38:24', 'SC', '248', NULL, NULL),
(191, '16302452-E1A6-D22C-5C99-133C48B5C980', 'Sudan', '2016-03-29 12:38:24', 'SD', '249', NULL, NULL),
(192, '472AA972-37BF-1FCF-5B13-03EAE9434088', 'Sweden', '2016-03-29 12:38:24', 'SE', '46', NULL, NULL),
(193, 'B2251D82-D868-DEAE-C811-4064951956F7', 'Singapore', '2016-03-29 12:38:24', 'SG', '65', NULL, NULL),
(194, 'F453E634-1155-9BCD-D903-08BEEC64C0A8', 'Saint Helena', '2016-03-29 12:38:24', 'SH', '290', NULL, NULL),
(195, 'B3D4C1FF-8E1D-DEEE-9A1A-39C83008F889', 'Slovenia', '2016-03-29 12:38:24', 'SI', '386', NULL, NULL),
(196, '8BF3EE1A-9967-AEDD-BA78-17C4087B28D9', 'Svalbard', '2016-03-29 12:38:24', 'SJ', '', NULL, NULL),
(197, '6FFA1E78-2CB2-B1CF-9D58-E0C9DEDA18AC', 'Slovakia', '2016-03-29 12:38:24', 'SK', '421', NULL, NULL),
(198, 'D6A4C632-C93A-839F-B09E-5480C4FAF1AD', 'Sierra Leone', '2016-03-29 12:38:24', 'SL', '232', NULL, NULL),
(199, '3DF96067-1DB6-B7CC-84B9-BAB7101F7131', 'San Marino', '2016-03-29 12:38:24', 'SM', '378', NULL, NULL),
(200, '2F0BC615-1C65-C7AA-47E8-9B5CA054D867', 'Senegal', '2016-03-29 12:38:24', 'SN', '221', NULL, NULL),
(201, 'C561F1FE-B072-5973-1DEC-F67D965DE27E', 'Somalia', '2016-03-29 12:38:24', 'SO', '252', NULL, NULL),
(202, '0775258C-EDC1-135D-E35C-01BD85F45F29', 'Suriname', '2016-03-29 12:38:24', 'SR', '597', NULL, NULL),
(203, 'AD0BAC3A-1DA4-23DA-0010-431A279304BE', 'Sao Tome and Principe', '2016-03-29 12:38:24', 'SS', '239', NULL, NULL),
(204, 'A4BDF3BD-B7F1-1B9B-CD98-A0C78ED53511', 'El Salvador', '2016-03-29 12:38:24', 'ST', '503', NULL, NULL),
(205, 'F4CEADD9-25F5-45F2-2E19-5B1795CE9D69', 'El Salvador', '2016-03-29 12:38:24', 'SV', '503', NULL, NULL),
(206, '46AD5507-C8B7-9F6D-571A-9E6E1C044CD6', 'Sint Maarten', '2016-03-29 12:38:24', 'SX', '', NULL, NULL),
(207, '3B28BF51-D190-F7CE-1BBA-49F72481AE3B', 'Syria', '2016-03-29 12:38:24', 'SY', '963', NULL, NULL),
(208, '1C48EC65-1073-25CD-5F53-7E4D22282B1B', 'Swaziland', '2016-03-29 12:38:24', 'SZ', '268', NULL, NULL),
(209, 'D3C33017-0BAE-B451-1190-B5A9A6D81265', 'Turks and Caicos Islands', '2016-03-29 12:38:24', 'TC', '1649', NULL, NULL),
(210, '436517D3-FF50-05BE-04A4-6314683C29BF', 'Chad', '2016-03-29 12:38:24', 'TD', '235', NULL, NULL),
(211, '373E212C-A17A-3D03-ACB3-588E2ECE1120', 'French Southern Territories', '2016-03-29 12:38:24', 'TF', '', NULL, NULL),
(212, '1DD74013-D596-D740-60F5-E007CFE9EE59', 'Togo', '2016-03-29 12:38:24', 'TG', '228', NULL, NULL),
(213, 'BF1DDCD3-0F3A-A81E-0508-910B20ED3822', 'Thailand', '2016-03-29 12:38:24', 'TH', '66', NULL, NULL),
(214, 'FB3A6E3C-53A9-CD6C-0F7C-302AB483B4BD', 'Tajikistan', '2016-03-29 12:38:24', 'TJ', '992', NULL, NULL),
(215, 'C343A6AB-0FAD-E093-7AF3-9589F5E58F64', 'Timor-Leste', '2016-03-29 12:38:24', 'TL', '670', NULL, NULL),
(216, 'DD3F11FD-CE04-AE45-D4DF-CB1324DDE122', 'Turkmenistan', '2016-03-29 12:38:24', 'TM', '993', NULL, NULL),
(217, '0AEF23A3-F684-B964-4D93-B507C40B66B4', 'Tunisia', '2016-03-29 12:38:24', 'TN', '216', NULL, NULL),
(218, 'A0662AD7-4934-E321-563F-6476311DD70C', 'Tonga', '2016-03-29 12:38:24', 'TO', '676', NULL, NULL),
(219, '5D0ECEE1-03F5-6D19-F5F3-F07F186DDF04', 'Turkey', '2016-03-29 12:38:24', 'TR', '90', NULL, NULL),
(220, 'F468D4C0-D571-5462-D0F1-6F0E4064AF46', 'Trinidad and Tobago', '2016-03-29 12:38:24', 'TT', '1868', NULL, NULL),
(221, 'BD92ECEC-C1D0-2516-23BF-75D5C2B05988', 'Tuvalu', '2016-03-29 12:38:24', 'TV', '688', NULL, NULL),
(222, 'C378CD23-31C4-6D56-EBA9-C38D38F74068', 'Taiwan', '2016-03-29 12:38:24', 'TW', '886', NULL, NULL),
(223, '11BAD1B7-D5B5-6F57-AE04-F483B2DEDAAB', 'Tanzania', '2016-03-29 12:38:24', 'TZ', '255', NULL, NULL),
(224, '4E7C6962-8A60-18F5-6380-6178B1BD4D1A', 'Ukraine', '2016-03-29 12:38:24', 'UA', '380', NULL, NULL),
(225, '2795DDE4-B42F-E010-4444-6F9AD1F42E87', 'Uganda', '2016-03-29 12:38:24', 'UG', '256', NULL, NULL),
(226, 'EF77733B-A972-EC78-8799-0BACF0ABF529', 'United States', '2016-03-29 12:38:24', 'US', '1', NULL, NULL),
(227, 'B1395F88-00C0-939B-DDFA-9DCBFB467EA4', 'Uruguay', '2016-03-29 12:38:24', 'UY', '598', NULL, NULL),
(228, '81E0BAA8-C899-C67F-9A1C-7F93971F181D', 'Uzbekistan', '2016-03-29 12:38:24', 'UZ', '998', NULL, NULL),
(229, '2ED293A8-00CF-E7F0-CA85-771A46E9F0B1', 'Holy See (Vatican City)', '2016-03-29 12:38:24', 'VA', '39', NULL, NULL),
(230, 'B34513B1-18A0-6F0F-9F93-5EBF96B73ADB', 'Saint Vincent and the Grenadines', '2016-03-29 12:38:24', 'VC', '1784', NULL, NULL),
(231, 'B4F3DA05-56D3-25AE-F8A9-8506B67C9004', 'Venezuela', '2016-03-29 12:38:24', 'VE', '58', NULL, NULL),
(232, '301B703B-B60C-4652-FB06-19CD778F0C74', 'British Virgin Islands', '2016-03-29 12:38:24', 'VG', '1284', NULL, NULL),
(233, 'C4ECE65F-CDFC-F50E-DCD9-3DB7CAB7C95E', 'US Virgin Islands', '2016-03-29 12:38:24', 'VI', '1340', NULL, NULL),
(234, 'C7245281-9AEA-4F60-73E4-0582061C77E9', 'Vietnam', '2016-03-29 12:38:24', 'VN', '84', NULL, NULL),
(235, 'BD92A44B-875F-79D2-3E12-D5175612D928', 'Vanuatu', '2016-03-29 12:38:24', 'VU', '678', NULL, NULL),
(236, 'E325ABAA-4150-836C-061D-6679EFEF3595', 'Wallis and Futuna', '2016-03-29 12:38:24', 'WF', '681', NULL, NULL),
(237, 'D8432DE9-535D-E306-0741-835AC0420A5B', 'Samoa', '2016-03-29 12:38:24', 'WS', '685', NULL, NULL),
(238, 'B133FA3B-7130-B4AF-373E-DEB720102D9B', 'Kosovo', '2016-03-29 12:38:24', 'XK', '', NULL, NULL),
(239, '3ABF1436-FAE0-3FD9-8948-501028332B17', 'Yemen', '2016-03-29 12:38:24', 'YE', '967', NULL, NULL),
(240, '7FA28C16-AE62-FBC2-7CEF-A5E4B71B826A', 'Mayotte', '2016-03-29 12:38:24', 'YT', '262', NULL, NULL),
(241, '38690943-EB49-39BB-09C7-1F987A3DDB85', 'South Africa', '2016-03-29 12:38:24', 'ZA', '27', NULL, NULL),
(242, '99795989-6422-28FE-D1A6-054605E86075', 'Zambia', '2016-03-29 12:38:24', 'ZM', '260', NULL, NULL),
(243, 'A6852D18-8C62-9B94-7F4B-2E65FE64EE88', 'Zimbabwe', '2016-03-29 12:38:24', 'ZW', '263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `TYPE` varchar(100) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(100) NOT NULL DEFAULT '',
  `LOCATION_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `SUBTYPE` varchar(100) NOT NULL DEFAULT '',
  `ENDPOINT_MODULE` varchar(255) NOT NULL DEFAULT '',
  `ENDPOINT_NAME` varchar(255) NOT NULL DEFAULT '',
  `ENDPOINT_TITLE` varchar(255) NOT NULL DEFAULT '',
  `ROLES` varchar(100) NOT NULL DEFAULT '',
  `FAVORITE` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `ALT_TITLES` varchar(255) NOT NULL DEFAULT '',
  `CLICKED` datetime DEFAULT NULL,
  `SYSTEM_DEVICE` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `ARCHIVED` int(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`ID`, `TITLE`, `TYPE`, `LINKED_OBJECT`, `LOCATION_ID`, `SYSTEM`, `SUBTYPE`, `ENDPOINT_MODULE`, `ENDPOINT_NAME`, `ENDPOINT_TITLE`, `ROLES`, `FAVORITE`, `ALT_TITLES`, `CLICKED`, `SYSTEM_DEVICE`, `ARCHIVED`) VALUES
(1, 'Switch 1', 'relay', 'Switch1', 4, '', '', '', '', '', '', 0, '', NULL, 0, 0),
(2, 'Switch 2', 'relay', 'Switch2', 0, '', '', '', '', '', '', 0, '', NULL, 0, 0),
(3, 'Switch 3', 'relay', 'Switch3', 6, '', '', '', '', '', '', 0, '', NULL, 0, 0),
(4, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>', 'sensor_temp', 'TempSensor01', 4, '', '', '', '', '', '', 0, '', NULL, 0, 0),
(5, '<#LANG_DEVICES_CURRENT_HUMIDITY#>', 'sensor_humidity', 'HumSensor01', 4, '', '', '', '', '', '', 0, '', NULL, 0, 0),
(6, '<#LANG_DEVICES_MOTION#> 1', 'motion', 'MotionSensor1', 6, '', '', '', '', '', '', 0, '', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `devices_groups`
--

DROP TABLE IF EXISTS `devices_groups`;
CREATE TABLE IF NOT EXISTS `devices_groups` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `SYS_NAME` varchar(100) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `APPLY_TYPES` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices_linked`
--

DROP TABLE IF EXISTS `devices_linked`;
CREATE TABLE IF NOT EXISTS `devices_linked` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DEVICE1_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DEVICE2_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LINK_TYPE` varchar(100) NOT NULL DEFAULT '',
  `LINK_SETTINGS` text DEFAULT NULL,
  `COMMENT` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices_scheduler_points`
--

DROP TABLE IF EXISTS `devices_scheduler_points`;
CREATE TABLE IF NOT EXISTS `devices_scheduler_points` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LINKED_METHOD` varchar(255) NOT NULL DEFAULT '',
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `SET_TIME` varchar(50) NOT NULL DEFAULT '',
  `SET_DAYS` varchar(50) NOT NULL DEFAULT '',
  `DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `ACTIVE` int(3) NOT NULL DEFAULT 1,
  `LATEST_RUN` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
CREATE TABLE IF NOT EXISTS `elements` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `SCENE_ID` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `TYPE` varchar(255) NOT NULL DEFAULT '',
  `TOP` int(10) NOT NULL DEFAULT 0,
  `LEFT` int(255) NOT NULL DEFAULT 0,
  `WIDTH` int(255) NOT NULL DEFAULT 0,
  `HEIGHT` int(255) NOT NULL DEFAULT 0,
  `CROSS_SCENE` int(3) NOT NULL DEFAULT 0,
  `BACKGROUND` int(3) NOT NULL DEFAULT 1,
  `JAVASCRIPT` text DEFAULT NULL,
  `CSS` text DEFAULT NULL,
  `DX` int(10) NOT NULL DEFAULT 0,
  `DY` int(10) NOT NULL DEFAULT 0,
  `LINKED_ELEMENT_ID` int(10) NOT NULL DEFAULT 0,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `CSS_STYLE` varchar(255) NOT NULL DEFAULT '',
  `POSITION_TYPE` int(3) NOT NULL DEFAULT 0,
  `CONTAINER_ID` int(10) NOT NULL DEFAULT 0,
  `S3D_SCENE` varchar(255) NOT NULL DEFAULT '',
  `SMART_REPEAT` int(3) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(255) NOT NULL DEFAULT '',
  `EASY_CONFIG` int(3) NOT NULL DEFAULT 0,
  `WIZARD_DATA` text DEFAULT NULL,
  `APPEAR_ANIMATION` int(3) NOT NULL DEFAULT 0,
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `CLASS_TEMPLATE` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`ID`, `SCENE_ID`, `TITLE`, `TYPE`, `TOP`, `LEFT`, `WIDTH`, `HEIGHT`, `CROSS_SCENE`, `BACKGROUND`, `JAVASCRIPT`, `CSS`, `DX`, `DY`, `LINKED_ELEMENT_ID`, `PRIORITY`, `CSS_STYLE`, `POSITION_TYPE`, `CONTAINER_ID`, `S3D_SCENE`, `SMART_REPEAT`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `LINKED_METHOD`, `EASY_CONFIG`, `WIZARD_DATA`, `APPEAR_ANIMATION`, `SYSTEM`, `DEVICE_ID`, `CLASS_TEMPLATE`) VALUES
(9, 1, '<#LANG_GENERAL_LIGHT#> 1', 'switch', 250, 10, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'default', 0, 0, '', 0, 'Switch1', '', '', 1, '', 0, '', 0, ''),
(10, 1, '<#LANG_GENERAL_LIGHT#> 2', 'switch', 250, 83, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'default', 0, 0, '', 0, 'Switch2', '', '', 1, '', 0, '', 0, ''),
(11, 1, '<#LANG_GENERAL_LIGHT#> 3', 'switch', 250, 156, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'default', 0, 0, '', 0, 'Switch3', '', '', 1, '', 0, '', 0, ''),
(12, 1, '<#LANG_DATE_BOX#>', 'html', 19, 10, 293, 71, 0, 1, '', '', 0, 0, 0, 330, 'split1', 0, 0, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(14, 1, '<#LANG_DEVICES_ROOMS_NOBODYHOME#>', 'mode', 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 101, 'nobodyhome', 1, 18, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(15, 1, '<#LANG_GENERAL_NIGHTTIME#>', 'mode', 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 98, 'darkness', 1, 18, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(16, 1, '<#LANG_DEVICES_THERMOSTAT_ECO_MODE#>', 'mode', 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 100, 'eco', 1, 18, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(17, 1, '<#LANG_GENERAL_MESSAGES#>', 'mode', 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 98, 'alerts', 1, 18, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(18, 1, '<#LANG_GENERAL_OPERATIONAL_MODES#>', 'container', 78, -2, 302, 93, 0, 0, '', '', 0, 0, 12, 320, 'default', 0, 0, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(19, 1, '<#LANG_GENERAL_WEATHER_FORECAST#>', 'html', 0, 305, 457, 356, 0, 1, '', '', 0, 0, 12, 310, 'default', 0, 0, '', 0, '', '', '', 0, '', 0, '', 0, ''),
(21, 1, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>', 'informer', 348, 11, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'temp', 0, 0, '', 0, 'TempSensor01', 'value', '', 1, '{\"STATE_HIGH\":1,\"STATE_HIGH_VALUE\":\"25\",\"STATE_LOW\":1,\"STATE_LOW_VALUE\":\"18\",\"UNIT\":\"\"}', 0, '', 0, ''),
(22, 1, '<#LANG_HUMIDITY#>', 'informer', 348, 97, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'humidity', 0, 0, '', 0, 'HumSensor01', 'value', '', 1, '{\"STATE_HIGH\":0,\"STATE_LOW\":0,\"UNIT\":\"%\"}', 0, '', 0, ''),
(24, 1, '<#LANG_GENERAL_CHART#>', 'html', 399, 10, 761, 211, 0, 0, '', '', 0, 0, 0, 0, 'default', 0, 0, '', 0, '', '', '', 0, NULL, 0, '', 0, ''),
(25, 1, 'Language/Time', 'navgo', 190, 8, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 'default', 0, 0, '', 0, '', '', '', 0, NULL, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `elm_states`
--

DROP TABLE IF EXISTS `elm_states`;
CREATE TABLE IF NOT EXISTS `elm_states` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ELEMENT_ID` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `IMAGE` varchar(255) NOT NULL DEFAULT '',
  `HTML` text DEFAULT NULL,
  `IS_DYNAMIC` int(3) NOT NULL DEFAULT 0,
  `CURRENT_STATE` int(3) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `CONDITION` int(3) NOT NULL DEFAULT 0,
  `CONDITION_VALUE` varchar(255) NOT NULL DEFAULT '',
  `CONDITION_ADVANCED` text DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `SWITCH_SCENE` int(3) NOT NULL DEFAULT 0,
  `CURRENT_STATUS` int(3) NOT NULL DEFAULT 0,
  `ACTION_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `ACTION_METHOD` varchar(255) NOT NULL DEFAULT '',
  `MENU_ITEM_ID` int(10) NOT NULL DEFAULT 0,
  `WINDOW_POSX` int(10) NOT NULL DEFAULT 0,
  `WINDOW_POSY` int(10) NOT NULL DEFAULT 0,
  `WINDOW_WIDTH` int(10) NOT NULL DEFAULT 0,
  `WINDOW_HEIGHT` int(10) NOT NULL DEFAULT 0,
  `HOMEPAGE_ID` int(10) NOT NULL DEFAULT 0,
  `EXT_URL` varchar(255) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `CODE` text DEFAULT NULL,
  `OPEN_SCENE_ID` int(10) NOT NULL DEFAULT 0,
  `S3D_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `S3D_CAMERA` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elm_states`
--

INSERT INTO `elm_states` (`ID`, `ELEMENT_ID`, `TITLE`, `IMAGE`, `HTML`, `IS_DYNAMIC`, `CURRENT_STATE`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `CONDITION`, `CONDITION_VALUE`, `CONDITION_ADVANCED`, `SCRIPT_ID`, `SWITCH_SCENE`, `CURRENT_STATUS`, `ACTION_OBJECT`, `ACTION_METHOD`, `MENU_ITEM_ID`, `WINDOW_POSX`, `WINDOW_POSY`, `WINDOW_WIDTH`, `WINDOW_HEIGHT`, `HOMEPAGE_ID`, `EXT_URL`, `PRIORITY`, `CODE`, `OPEN_SCENE_ID`, `S3D_OBJECT`, `S3D_CAMERA`) VALUES
(54, 9, 'off', '', '<#LANG_GENERAL_LIGHT#> 1', 1, 1, 'Switch1', 'status', 4, '1', NULL, 0, 0, 0, 'Switch1', 'turnOn', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(55, 9, 'on', '', '<#LANG_GENERAL_LIGHT#> 1', 1, 0, 'Switch1', 'status', 1, '1', NULL, 0, 0, 0, 'Switch1', 'turnOff', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(57, 10, 'on', '', '<#LANG_GENERAL_LIGHT#> 2', 1, 0, 'Switch2', 'status', 1, '1', NULL, 0, 0, 0, 'Switch2', 'turnOff', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(56, 10, 'off', '', '<#LANG_GENERAL_LIGHT#> 2', 1, 1, 'Switch2', 'status', 4, '1', NULL, 0, 0, 0, 'Switch2', 'turnOn', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(59, 11, 'on', '', '<#LANG_GENERAL_LIGHT#> 3', 1, 0, 'Switch3', 'status', 1, '1', NULL, 0, 0, 0, 'Switch3', 'turnOff', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(58, 11, 'off', '', '<#LANG_GENERAL_LIGHT#> 3', 1, 1, 'Switch3', 'status', 4, '1', NULL, 0, 0, 0, 'Switch3', 'turnOn', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(16, 12, 'default', '', '<style>\r\n.sys {position:absolute !important; top:0px; left: 140px; }\r\n.date {font-size:13px !important; height:10px;}\r\n</style>\r\n\r\n<div>%ThisComputer.timeNow%</div><div class=\"date\"> %ThisComputer.MonthTXTalt% %ThisComputer.DayOfMonthNum%, %ThisComputer.DayOfWeekTXT%<br>\r\n <img src=\"/cms/scenes/styles/system/security_%Security.stateColor%.png\" align=\"absmiddle\">\r\n <img src=\"/cms/scenes/styles/system/system_%System.stateColor%.png\" align=\"absmiddle\">\r\n <img src=\"/cms/scenes/styles/system/communication_%Communication.stateColor%.png\" align=\"absmiddle\">\r\n</div>\r\n\r\n', 0, 1, '', '', 1, '', '', 0, 0, 0, '', '', 97, 639, 90, 295, 227, 0, '', 0, '', 0, '', ''),
(19, 14, 'on', '', '<#LANG_DEVICES_ROOMS_NOBODYHOME#>', 1, 0, 'NobodyHomeMode', 'active', 1, '1', '', 0, 0, 0, 'NobodyHomeMode', 'deactivate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(20, 14, 'sleep', '', 'Все<br>спят', 1, 0, 'NobodyHomeMode', 'active', 1, '2', '', 0, 0, 0, 'NobodyHomeMode', 'deactivate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(21, 14, 'off', '', '<#LANG_DEVICES_ROOMS_SOMEBODYHOME#>', 1, 1, 'NobodyHomeMode', 'active', 1, '0', '', 0, 0, 0, 'NobodyHomeMode', 'activate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(22, 15, 'on', '', '<#LANG_GENERAL_NIGHTTIME#>', 1, 0, 'DarknessMode', 'active', 1, '1', '', 0, 0, 0, 'DarknessMode', 'deactivate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(23, 15, 'off', '', '<#LANG_GENERAL_DAYTIME#>', 1, 1, 'DarknessMode', 'active', 4, '1', '', 0, 0, 0, 'DarknessMode', 'activate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(24, 16, 'off', '', 'ECO<br><#LANG_OFF#>', 1, 1, 'EconomMode', 'active', 4, '1', '', 0, 0, 0, 'EconomMode', 'activate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(25, 16, 'on', '', 'ECO<br><#LANG_ON#>', 1, 0, 'EconomMode', 'active', 1, '1', '', 0, 0, 0, 'EconomMode', 'deactivate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(26, 17, 'on', '', '<#LANG_GENERAL_MESSAGES#><br/><#LANG_ON#>', 1, 1, 'NightMode', 'active', 4, '1', '', 0, 0, 0, 'NightMode', 'activate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(27, 17, 'off', '', '<#LANG_GENERAL_MESSAGES#><br/><#LANG_OFF#>', 1, 0, 'NightMode', 'active', 1, '1', '', 0, 0, 0, 'NightMode', 'deactivate', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(28, 18, 'Default', '', '', 0, 1, '', '', 1, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(29, 19, 'default', '', '<div style=\"display: table-cell; width:220px; color:white; font-size:14px; padding:10px;\"><b><#LANG_TODAY#>:</b><br/><#LANG_GENERAL_MINMAX#>: %ow_day0.temp_min%/%ow_day0.temp_max% &deg;C, %ow_day0.weather_type%,\r\n<#LANG_WIND#>: %ow_day0.wind_speed% <#LANG_GENERAL_METERS_PER_SECOND#></div>\r\n<div style=\"display: table-cell; width:220px; color:white; font-size:14px; padding:10px;\"><b><#LANG_GENERAL_TOMORROW#>: </b><br/><#LANG_GENERAL_MINMAX#>: %ow_day1.temp_min%/%ow_day1.temp_max% &deg;C, %ow_day1.weather_type%,\r\n<#LANG_WIND#>: %ow_day1.wind_speed% <#LANG_GENERAL_METERS_PER_SECOND#></div>\r\n<div style=\"color:white; font-size:14px; padding:10px;\">[#module name=\"shoutbox\" limit=\"14\" reverse=\"1\" mobile=\"1\"#]</div>', 0, 1, '', '', 1, '', '', 0, 0, 0, '', '', 92, 364, 43, 545, 343, 0, '', 0, '', 0, '', ''),
(60, 22, 'default', '', '%HumSensor01.value% %', 0, 1, '', '', 0, '', NULL, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(63, 21, 'default', '', '%TempSensor01.value%', 2, 1, 'TempSensor01', 'value', 0, '', 'if (gg(\'TempSensor01.value\')>=(float)\'18\' && gg(\'TempSensor01.value\')<=(float)\'25\') {\n $display=1;\n} else {\n $display=0;\n}', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(61, 21, 'high', '', '%TempSensor01.value%', 1, 0, 'TempSensor01', 'value', 2, '25', NULL, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(62, 21, 'low', '', '%TempSensor01.value%', 1, 0, 'TempSensor01', 'value', 3, '18', NULL, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, NULL, 0, '', ''),
(44, 24, 'default', '', '[#module name=\"charts\" id=\"2\" width=\"100%\" height=\"200\" interval=\"3600\"#]', 0, 1, '', '', 1, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', ''),
(51, 25, 'default', '', 'Language/Time', 0, 1, '', '', 1, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '/popup/first_start.html', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `EVENT_TYPE` varchar(10) NOT NULL DEFAULT '',
  `TERMINAL_FROM` varchar(255) NOT NULL DEFAULT '',
  `TERMINAL_TO` varchar(255) NOT NULL DEFAULT '',
  `USER_FROM` varchar(255) NOT NULL DEFAULT '',
  `USER_TO` varchar(255) NOT NULL DEFAULT '',
  `WINDOW` varchar(255) NOT NULL DEFAULT '',
  `DETAILS` text DEFAULT NULL,
  `ADDED` datetime DEFAULT NULL,
  `EXPIRE` datetime DEFAULT NULL,
  `PROCESSED` int(3) NOT NULL DEFAULT 0,
  `EVENT_NAME` varchar(255) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_params`
--

DROP TABLE IF EXISTS `events_params`;
CREATE TABLE IF NOT EXISTS `events_params` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `UPDATED` datetime DEFAULT NULL,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gpsactions`
--

DROP TABLE IF EXISTS `gpsactions`;
CREATE TABLE IF NOT EXISTS `gpsactions` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int(10) NOT NULL DEFAULT 0,
  `USER_ID` int(10) NOT NULL DEFAULT 0,
  `ACTION_TYPE` int(255) NOT NULL DEFAULT 0,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `CODE` text DEFAULT NULL,
  `LOG` text DEFAULT NULL,
  `EXECUTED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOCATION_ID` (`LOCATION_ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gpsdevices`
--

DROP TABLE IF EXISTS `gpsdevices`;
CREATE TABLE IF NOT EXISTS `gpsdevices` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `USER_ID` int(10) NOT NULL DEFAULT 0,
  `LAT` varchar(255) NOT NULL DEFAULT '',
  `LON` varchar(255) NOT NULL DEFAULT '',
  `UPDATED` datetime DEFAULT NULL,
  `DEVICEID` varchar(255) NOT NULL DEFAULT '',
  `TOKEN` varchar(255) NOT NULL DEFAULT '',
  `HOME_DISTANCE` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gpslocations`
--

DROP TABLE IF EXISTS `gpslocations`;
CREATE TABLE IF NOT EXISTS `gpslocations` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LAT` float NOT NULL DEFAULT 0,
  `LON` float NOT NULL DEFAULT 0,
  `RANGE` float NOT NULL DEFAULT 0,
  `VIRTUAL_USER_ID` int(10) NOT NULL DEFAULT 0,
  `IS_HOME` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gpslocations`
--

INSERT INTO `gpslocations` (`ID`, `TITLE`, `LAT`, `LON`, `RANGE`, `VIRTUAL_USER_ID`, `IS_HOME`) VALUES
(11, 'Location 1', 52.9471, 21.668, 500, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gpslog`
--

DROP TABLE IF EXISTS `gpslog`;
CREATE TABLE IF NOT EXISTS `gpslog` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ADDED` datetime DEFAULT NULL,
  `LAT` float NOT NULL DEFAULT 0,
  `LON` float NOT NULL DEFAULT 0,
  `ALT` float NOT NULL DEFAULT 0,
  `PROVIDER` varchar(30) NOT NULL DEFAULT '',
  `SPEED` float NOT NULL DEFAULT 0,
  `BATTLEVEL` int(3) NOT NULL DEFAULT 0,
  `CHARGING` int(3) NOT NULL DEFAULT 0,
  `DEVICEID` varchar(255) NOT NULL DEFAULT '',
  `DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `LOCATION_ID` int(10) NOT NULL DEFAULT 0,
  `ACCURACY` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `DEVICE_ID` (`DEVICE_ID`),
  KEY `LOCATION_ID` (`LOCATION_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2912 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ADDED` datetime DEFAULT NULL,
  `OBJECT_ID` int(10) NOT NULL DEFAULT 0,
  `METHOD_ID` int(10) NOT NULL DEFAULT 0,
  `VALUE_ID` int(10) NOT NULL DEFAULT 0,
  `OLD_VALUE` varchar(255) NOT NULL DEFAULT '',
  `NEW_VALUE` varchar(255) NOT NULL DEFAULT '',
  `DETAILS` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2521 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ignore_updates`
--

DROP TABLE IF EXISTS `ignore_updates`;
CREATE TABLE IF NOT EXISTS `ignore_updates` (
  `ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `COMMANDS` text NOT NULL,
  `RUNTIME` datetime DEFAULT NULL,
  `EXPIRE` datetime DEFAULT NULL,
  `PROCESSED` int(3) NOT NULL DEFAULT 0,
  `STARTED` datetime DEFAULT NULL,
  `EXPIRED` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1980510 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `TITLE`, `COMMANDS`, `RUNTIME`, `EXPIRE`, `PROCESSED`, `STARTED`, `EXPIRED`) VALUES
(1980509, 'restartWebSocket', 'sg(\"cycle_websocketsRun\",\"\");sg(\"cycle_websocketsControl\",\"restart\");', '2022-12-27 19:52:07', '2022-12-27 20:22:07', 0, NULL, 0),
(1980491, 'HomeBridgeMode', 'sg(\'HomeBridge.mode\',\'\');', '2022-12-27 19:45:57', '2022-12-27 20:15:57', 1, '2022-12-27 19:45:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
CREATE TABLE IF NOT EXISTS `layouts` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `TYPE` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `APP` varchar(255) NOT NULL DEFAULT '',
  `URL` char(255) NOT NULL DEFAULT '',
  `DETAILS` text DEFAULT NULL,
  `REFRESH` int(10) NOT NULL DEFAULT 0,
  `ICON` varchar(50) NOT NULL DEFAULT '',
  `HIDDEN` int(3) NOT NULL DEFAULT 0,
  `BACKGROUND_IMAGE` varchar(255) NOT NULL DEFAULT '',
  `THEME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`ID`, `TITLE`, `PRIORITY`, `TYPE`, `CODE`, `APP`, `URL`, `DETAILS`, `REFRESH`, `ICON`, `HIDDEN`, `BACKGROUND_IMAGE`, `THEME`) VALUES
(7, '<#LANG_MODULE_SCENES#>', 550, 'app', '', 'scenes', '', '', 0, '', 0, '', ''),
(13, '<#LANG_SECTION_APPLICATIONS#>', 0, 'url', NULL, '', '/apps.html', '', 0, '', 0, '', ''),
(15, 'Panel', 0, 'dashboard', NULL, '', '', '{\"version\":1,\"allow_edit\":true,\"plugins\":[],\"panes\":[{\"title\":\"TIME\",\"width\":1,\"row\":{\"2\":1,\"3\":1},\"col\":{\"2\":1,\"3\":1},\"col_width\":1,\"widgets\":[{\"type\":\"clock_plugin\",\"settings\":{\"show_date\":true}}]},{\"title\":\"CONTROL\",\"width\":1,\"row\":{\"2\":1,\"3\":1},\"col\":{\"2\":2,\"3\":2},\"col_width\":1,\"widgets\":[{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"1\",\"size\":1}},{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"2\",\"size\":1}},{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"3\",\"size\":1}}]},{\"title\":\"Sensors\",\"width\":1,\"row\":{\"3\":1},\"col\":{\"3\":3},\"col_width\":1,\"widgets\":[{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"4\",\"size\":1}},{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"5\",\"size\":1}},{\"type\":\"devices_plugin\",\"settings\":{\"device_id\":\"6\",\"size\":1}}]}],\"datasources\":[],\"columns\":3}', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`ID`, `TITLE`, `PRIORITY`) VALUES
(1, '<#LANG_GENERAL_ROOM_KITCHEN#>', 0),
(4, '<#LANG_GENERAL_ROOM_LIVINGROOM#>', 0),
(5, '<#LANG_GENERAL_ROOM_BEDROOM#>', 0),
(6, '<#LANG_GENERAL_ROOM_HALL#>', 0),
(7, '<#LANG_GENERAL_ROOM_BATHROOM#>', 0),
(8, '<#LANG_GENERAL_ROOM_TOILET#>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log4php_log`
--

DROP TABLE IF EXISTS `log4php_log`;
CREATE TABLE IF NOT EXISTS `log4php_log` (
  `timestamp` datetime DEFAULT NULL,
  `logger` varchar(256) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `thread` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `line` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_favorites`
--

DROP TABLE IF EXISTS `media_favorites`;
CREATE TABLE IF NOT EXISTS `media_favorites` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PATH` varchar(255) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LIST_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `COLLECTION_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_history`
--

DROP TABLE IF EXISTS `media_history`;
CREATE TABLE IF NOT EXISTS `media_history` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PATH` varchar(255) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LIST_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `COLLECTION_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PLAYED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

DROP TABLE IF EXISTS `methods`;
CREATE TABLE IF NOT EXISTS `methods` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OBJECT_ID` int(10) NOT NULL DEFAULT 0,
  `CLASS_ID` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `DESCRIPTION` text DEFAULT NULL,
  `CODE` text DEFAULT NULL,
  `CALL_PARENT` int(3) NOT NULL DEFAULT 0,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `EXECUTED` datetime DEFAULT NULL,
  `EXECUTED_PARAMS` varchar(255) DEFAULT NULL,
  `EXECUTED_SRC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `OBJECT_ID` (`OBJECT_ID`),
  KEY `CLASS_ID` (`CLASS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`ID`, `OBJECT_ID`, `CLASS_ID`, `TITLE`, `DESCRIPTION`, `CODE`, `CALL_PARENT`, `SCRIPT_ID`, `EXECUTED`, `EXECUTED_PARAMS`, `EXECUTED_SRC`) VALUES
(1, 0, 1, 'KeyPressed', 'событие, возникающее при нажатии на кнопку', '$this->setProperty(\"lastTimePressed\",time());', 0, 0, NULL, NULL, NULL),
(23, 0, 11, 'say', '', 'echo \"notify: \".utf2win($params[\'say\']).\"<br>\";\r\n$say=utf2win($params[\'say\']);\r\n$say=str_replace(\' \',\'..\',$say);\r\necho (\'\"c:\\\\program files\\\\Growl for windows\\\\growlnotify.com\" /t:Alice \'.$say.\'\');\r\nexec(\'\"c:\\\\program files\\\\Growl for windows\\\\growlnotify.com\" /t:Alice \'.$say.\'\');', 0, 0, NULL, NULL, NULL),
(14, 0, 7, 'onNewMinute', '', '', 0, 0, '2022-12-27 19:47:00', '{\"no_session\":\"1\",\"ORIGINAL_OBJECT_TITLE\":\"ClockChime\"}', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(15, 0, 7, 'onNewHour', '', '', 0, 0, '2022-08-25 14:00:00', '{\"no_session\":\"1\",\"ORIGINAL_OBJECT_TITLE\":\"ClockChime\"}', '/api.php/method/ClockChime.onNewHour?m_c_s[0]=ClockChime.onNewHour&r_s_m=1&no_session=1'),
(18, 6, 0, 'onNewMinute', '', '$h=(int)date(\'G\',time());\r\n$m=date(\'i\',time());\r\n\r\n\r\nif (isWeekDay()) {\r\n}\r\n\r\nsg(\'ThisComputer.DayOfMonthNum\',date(\'d\'));\r\nsg(\'ThisComputer.DayOfWeekTXT\',date(\'l\'));\r\nsg(\'ThisComputer.MonthTXTalt\',date(\'F\'));\r\n\r\nif (timeBetween(getGlobal(\'NightModeEnd\'),getGlobal(\'NightModeStart\')) && getGlobal(\'clockChimeEnabled\')) {\r\n if ($m==\"00\") {\r\n   say(timeNow(),1);\r\n }\r\n}\r\n\r\n\r\nsetGlobal(\'timeNow\',date(\'H:i\'));\r\n\r\n$homeStatus=date(\'H:i\');\r\nif (getGlobal(\'NobodyHomeMode.active\')) {\r\n $homeStatus.=\' \'.LANG_DEVICES_ROOMS_NOBODYHOME;\r\n} else {\r\n $homeStatus.=\' \'.LANG_DEVICES_ROOMS_SOMEBODYHOME;\r\n}\r\n\r\n$homeStatus.=\' \'.getGlobal(\'Security.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'System.stateDetails\');\r\n$homeStatus.=\' \'.getGlobal(\'Communication.stateDetails\');\r\nsetGlobal(\'HomeStatus\',$homeStatus);\r\n\r\n if (timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')==\"1\") {\r\n  setGlobal(\"isDark\",0);\r\n  callMethod(\'DarknessMode.deactivate\');  \r\n } elseif (!timeBetween(getGlobal(\'SunRiseTime\'),getGlobal(\'SunSetTime\')) && getGlobal(\'isDark\')!=\"1\") {\r\n  setGlobal(\"isDark\",1);\r\n  callMethod(\'DarknessMode.activate\');    \r\n }\r\n \r\nif (timeIs(\"23:30\") && (gg(\"EconomMode.active\")!=\"1\") && (gg(\"NobodyHomeMode.active\")==\"1\")) {\r\n callMethod(\'EconomMode.activate\');\r\n}\r\n\r\nif (timeIs(gg(\'NightModeStart\'))) {\r\n callMethod(\'NightMode.activate\');\r\n} elseif (timeIs(gg(\'NightModeEnd\'))) {\r\n callMethod(\'NightMode.deactivate\');\r\n}\r\n\r\nif (timeIs(\"03:00\")) {\r\n runScript(\"systemMaintenance\");\r\n}\r\n\r\nif (gg(\'ThisComputer.AlarmStatus\') && timeIs(gg(\'ThisComputer.AlarmTime\'))) {\r\n runScript(\'MorningAlarm\');\r\n}', 1, 0, '2022-12-27 19:47:00', '{\"r_s_m\":\"1\",\"no_session\":\"1\"}', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(20, 0, 10, 'WakedUp', '', '', 0, 0, NULL, NULL, NULL),
(25, 0, 10, 'onIdle', '', '', 0, 0, NULL, NULL, NULL),
(27, 0, 10, 'StartUp', '', '', 0, 0, '2022-12-27 19:45:55', '{\"ORIGINAL_OBJECT_TITLE\":\"ThisComputer\"}', ''),
(29, 0, 10, 'commandReceived', 'получение новой команды', '', 0, 0, '2017-12-16 16:18:37', '{\"command\":\"\\u0441\\u043a\\u0430\\u0436\\u0438 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0442\",\"ORIGINAL_OBJECT_TITLE\":\"ThisComputer\"}', NULL),
(30, 7, 0, 'commandReceived', '', '$command=$params[\'command\'];\r\n\r\n$short_command=\'\';\r\n$dt=recognizeTime($command,$short_command);\r\n\r\nif (preg_match(\'/скажи сколько врем/uis\',$command)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\',2);\r\n  return;\r\n }\r\n global $voicemode;\r\n $voicemode=\'on\';\r\n say(\'Сейчас \'.timeNow(),2);\r\n} elseif (preg_match(\'/сколько время/uis\',$command)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\');\r\n  echo $short_command;\r\n  return;\r\n }\r\n say(\'Сейчас \'.timeNow());\r\n} elseif (preg_match(\'/повтори (.+)/uis\',$command,$m) || preg_match(\'/скажи (.+)/uis\',$command,$m)) {\r\n if ($dt>0) {\r\n  addScheduledJob(\"command\".$dt,\"processCommand(\'\".$short_command.\"\');\",$dt);\r\n  say(\'Задача принята\',2);\r\n  return;\r\n }\r\n global $voicemode;\r\n $voicemode=\'on\';\r\n say($m[1],2);\r\n} else {\r\n say(\'Неизвестная команда...\',2);\r\n}', 1, 0, '2017-12-16 16:18:37', '{\"command\":\"\\u0441\\u043a\\u0430\\u0436\\u0438 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0442\"}', NULL),
(45, 0, 10, 'powerConnected', '', '', 0, 0, NULL, NULL, NULL),
(46, 0, 10, 'powerDisconnected', '', '', 0, 0, NULL, NULL, NULL),
(48, 7, 0, 'powerDisconnected', NULL, 'say(\"Отключено питание\");', 1, 0, NULL, NULL, NULL),
(59, 0, 21, 'checkState', '', ' ', 0, 0, '2022-12-27 19:46:59', '{\"ORIGINAL_OBJECT_TITLE\":\"Communication\"}', ''),
(60, 0, 21, 'stateChanged', '', '', 0, 0, '2022-12-27 20:28:31', '{\"ORIGINAL_OBJECT_TITLE\":\"System\"}', ''),
(63, 0, 24, 'modeChanged', '', '$this->setProperty(\"updated\",time());\r\n$this->setProperty(\"updatedTime\",date(\'H:i\'));\r\nif ($this->getProperty(\'active\')) {\r\n say(processTitle($this->getProperty(\'title\')).\" \".LANG_GENERAL_ACTIVATED.\".\");\r\n} else {\r\n say(processTitle($this->getProperty(\'title\')).\" \".LANG_GENERAL_DEACTIVATED.\".\");\r\n}', 0, 0, '2022-12-27 19:46:00', '{\"PROPERTY\":\"active\",\"NEW_VALUE\":\"0\",\"OLD_VALUE\":\"1\",\"raiseEvent\":\"1\",\"r_s_m\":\"1\",\"no_session\":\"1\",\"ORIGINAL_OBJECT_TITLE\":\"DarknessMode\"}', '/api.php/method/DarknessMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute&m_c_s[1]=DarknessMode.mod...'),
(64, 0, 24, 'activate', '', '$this->setProperty(\'active\',1);', 0, 0, '2022-12-27 20:41:00', '{\"ORIGINAL_OBJECT_TITLE\":\"DarknessMode\"}', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(65, 0, 24, 'deactivate', '', '$this->setProperty(\'active\',0);', 0, 0, '2022-12-27 19:46:00', '{\"ORIGINAL_OBJECT_TITLE\":\"DarknessMode\"}', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(66, 0, 25, 'onActivity', 'Rooms Activity', '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_onActivity.php\');\r\n/* end injection of {SDevices} */', 0, 0, '2017-03-10 18:12:14', 'a:1:{s:21:\"ORIGINAL_OBJECT_TITLE\";s:4:\"Hall\";}', NULL),
(67, 0, 25, 'onIdle', 'Rooms Idle', '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_onIdle.php\');\r\n/* end injection of {SDevices} */', 0, 0, '2017-03-10 18:22:15', 'a:1:{s:21:\"ORIGINAL_OBJECT_TITLE\";s:4:\"Hall\";}', NULL),
(73, 17, 0, 'checkState', '', '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\n$cycles=array(\'states\'=>\'states\',\'main\'=>\'main\',\'execs\'=>\'exec\',\'scheduler\'=>\'scheduler\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>5*60) {\r\n  $red_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";\r\n }\r\n}\r\n\r\n$cycles=array(\'ping\'=>\'ping\',\'webvars\'=>\'webvars\');\r\nforeach($cycles as $k=>$v) {\r\n $tm=getGlobal(\'ThisComputer.cycle_\'.$k.\'Run\');\r\n if (time()-$tm>10*60) {\r\n  $yellow_state=1;\r\n  $details[]=$v.\" \".LANG_GENERAL_CYCLE.\" \".LANG_GENERAL_STOPPED.\".\";  \r\n }\r\n}\r\n\r\nif ((int)gg(\'ThisComputer.SpaceProblems\')>0) {\r\n  $red_state=1;\r\n  $details[]=LANG_GENERAL_RUNNING_OUT_SPACE.\" (\".gg(\'ThisComputer.SpaceProblems_Details\').\').\';  \r\n}\r\n\r\n/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/system_checkstate.php\');\r\n/* end injection of {SDevices} */\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details),2);\r\n } else {\r\n  say(LANG_GENERAL_SYSTEM_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title,2);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}\r\n', 1, 0, '2022-12-27 19:46:59', '', ''),
(74, 18, 0, 'checkState', '', '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif (!isOnline(\'Internet\')) {\r\n $yellow_state=1;\r\n $details[]=LANG_GENERAL_NO_INTERNET_ACCESS;\r\n}\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_COMMUNICATION_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', 1, 0, '2022-12-27 19:46:59', '', ''),
(75, 16, 0, 'checkState', '', '$details=array();\r\n$red_state=0;\r\n$yellow_state=0;\r\n\r\nif ($red_state) {\r\n $state=\'red\';\r\n $state_title=LANG_GENERAL_RED; \r\n} elseif ($yellow_state) {\r\n $state=\'yellow\';\r\n $state_title=LANG_GENERAL_YELLOW;  \r\n} else {\r\n $state=\'green\';\r\n $state_title=LANG_GENERAL_GREEN;   \r\n}\r\n\r\n$new_details=implode(\". \",$details);\r\nif ($this->getProperty(\"stateDetails\")!=$new_details) {\r\n $this->setProperty(\'stateDetails\',$new_details);\r\n}\r\n\r\nif ($this->getProperty(\'stateColor\')!=$state) {\r\n $this->setProperty(\'stateColor\',$state);\r\n $this->setProperty(\'stateTitle\',$state_title);\r\n if ($state!=\'green\') {\r\n  say(LANG_GENERAL_SECURITY_STATE.\" \".LANG_GENERAL_CHANGED_TO.\" \".$state_title.\".\");\r\n  say(implode(\". \",$details));\r\n } else {\r\n  say(LANG_GENERAL_SECURITY_STATE.\" \".LANG_GENERAL_RESTORED_TO.\" \".$state_title);\r\n }\r\n $this->callMethod(\'stateChanged\');\r\n}', 1, 0, '2022-12-27 19:46:59', '', ''),
(77, 0, 10, 'VolumeLevelChanged', '', '$this->setProperty(\'volumeLevel\',$params[\'VALUE\']);\r\nif (IsWindowsOs()) {\r\n $volume=round(65535*$params[\'VALUE\']/100); \r\n safe_exec(\'..\\\\apps\\\\nircmd\\\\nircmdc setsysvolume \'.$volume); \r\n} else {\r\n safe_exec(\'amixer  sset PCM,0 \'.$params[\'VALUE\'].\'%\');\r\n}\r\nsay(\"Изменилась громкость до \".$params[\'VALUE\'].\" процентов\");', 0, 0, '2014-07-31 21:15:03', 'a:3:{s:5:\"VALUE\";s:2:\"90\";s:4:\"HOST\";s:9:\"localhost\";s:21:\"ORIGINAL_OBJECT_TITLE\";s:12:\"ThisComputer\";}', NULL),
(81, 47, 0, 'activate', '', 'setGlobal(\'minMsgLevel\',\'2\');\n/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/nightmode_activate.php\');\n/* end injection of {SDevices} */', 1, 0, '2020-04-07 20:00:00', '{\"STATE\":\"on\"}', '/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1'),
(82, 47, 0, 'deactivate', '', 'setGlobal(\'minMsgLevel\',\'1\');\n/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/nightmode_deactivate.php\');\n/* end injection of {SDevices} */', 1, 0, '2020-04-08 08:00:01', '{\"STATE\":\"off\"}', '/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1'),
(103, 20, 0, 'activate', '', '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/nobodyhomemode_activate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2018-10-31 19:40:30', '{\"STATE\":\"off\"}', NULL),
(104, 20, 0, 'deactivate', '', '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/nobodyhomemode_deactivate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2018-10-31 19:58:19', '{\"STATE\":\"on\"}', NULL),
(88, 0, 25, 'updateActivityStatus', 'Update activity status', '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/Rooms_updateActivityStatus.php\');\r\n/* end injection of {SDevices} */', 0, 0, '2017-03-10 18:12:14', 'a:1:{s:21:\"ORIGINAL_OBJECT_TITLE\";s:4:\"Hall\";}', NULL),
(92, 0, 32, 'alarm', '', '', 0, 0, NULL, NULL, NULL),
(93, 0, 32, 'goingHome', '', '', 0, 0, NULL, NULL, NULL),
(94, 0, 32, 'gotHome', '', '', 0, 0, NULL, NULL, NULL),
(95, 0, 32, 'Moving', '', '', 0, 0, NULL, NULL, NULL),
(96, 0, 32, 'outOfHome', '', '', 0, 0, NULL, NULL, NULL),
(106, 7, 0, 'StartUp', '', '', 1, 29, '2022-12-27 19:45:55', '{\"object\":\"ThisComputer\",\"op\":\"m\",\"m\":\"StartUp\"}', ''),
(107, 6, 0, 'onNewHour', '', '$paths=array(\'/var/log/*.1\',\'/var/log/*.2\',\r\n             \'/var/log/*.1.*\',\r\n             \'/var/log/*.2.*\',             \r\n             \'/var/log/*.3.*\',\r\n             \'/var/log/*.4.*\',\r\n             \'/var/log/*.5.*\',\r\n             \'/var/log/*.6.*\',\r\n             \'/var/log/*.7.*\'\r\n            );\r\nforeach($paths as $p) {\r\n safe_exec(\'rm \'.$p);\r\n}\r\nrunScript(\'Hourly\');\r\nrunScript(\'filesClearOld\');', 1, 0, '2022-08-25 14:00:00', '{\"r_s_m\":\"1\",\"no_session\":\"1\"}', '/api.php/method/ClockChime.onNewHour?m_c_s[0]=ClockChime.onNewHour&r_s_m=1&no_session=1'),
(108, 19, 0, 'activate', NULL, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/econommode_activate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2018-10-30 22:52:00', NULL, NULL),
(109, 19, 0, 'deactivate', NULL, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/econommode_deactivate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2018-10-30 23:02:50', '{\"STATE\":\"on\"}', NULL),
(110, 0, 39, 'statusUpdated', 'Status updated event', 'require(DIR_MODULES.\'devices/SDevices_statusUpdated.php\');', 0, 0, '2020-01-04 17:24:01', '{\"PROPERTY\":\"status\",\"NEW_VALUE\":\"0\",\"OLD_VALUE\":\"1\",\"SOURCE\":\"\\/ajax\\/scenes.html?op=click&id=55\",\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/ajax/scenes.html?op=click&id=55'),
(111, 0, 39, 'logicAction', 'Logic Action', 'require(DIR_MODULES.\'devices/SDevices_logicAction.php\');', 0, 0, '2020-01-04 17:24:01', '{\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/ajax/scenes.html?op=click&id=55'),
(112, 0, 40, 'turnOn', 'Включить', 'require(DIR_MODULES.\'devices/SControllers_turnOn.php\');', 0, 0, '2020-01-04 17:24:01', '{\"STATE\":\"off\",\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/ajax/scenes.html?op=click&id=54'),
(113, 0, 40, 'turnOff', 'Выключить', 'require(DIR_MODULES.\'devices/SControllers_turnOff.php\');', 0, 0, '2020-01-04 17:24:01', '{\"STATE\":\"on\",\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/ajax/scenes.html?op=click&id=55'),
(114, 0, 40, 'switch', 'Switch', 'require(DIR_MODULES.\'devices/SControllers_switch.php\');', 0, 0, '2017-03-13 13:08:17', 'a:4:{s:5:\"TITLE\";s:0:\"\";s:5:\"VALUE\";s:1:\"1\";s:5:\"value\";s:1:\"1\";s:21:\"ORIGINAL_OBJECT_TITLE\";s:4:\"Noo2\";}', NULL),
(115, 0, 42, 'levelUpdated', 'Level Updated', 'require(DIR_MODULES.\'devices/SDimmers_levelUpdated.php\');', 0, 0, NULL, NULL, NULL),
(116, 0, 42, 'turnOn', 'Включить', 'require(DIR_MODULES.\'devices/SDimmers_turnOn.php\');', 0, 0, NULL, NULL, NULL),
(117, 0, 42, 'turnOff', 'Выключить', 'require(DIR_MODULES.\'devices/SDimmers_turnOff.php\');', 0, 0, NULL, NULL, NULL),
(118, 0, 43, 'motionDetected', 'Motion Detected', 'require(DIR_MODULES.\'devices/SMotions_motionDetected.php\');', 0, 0, '2017-03-07 16:42:01', 'a:1:{s:21:\"ORIGINAL_OBJECT_TITLE\";s:13:\"MotionSensor2\";}', NULL),
(119, 0, 44, 'statusUpdated', 'Status updated event', 'require(DIR_MODULES.\'devices/SOpenClose_statusUpdated.php\');', 0, 0, NULL, NULL, NULL),
(120, 0, 45, 'pressed', 'Нажать', 'require(DIR_MODULES.\'devices/SButtons_pressed.php\');', 0, 0, '2017-03-09 12:58:33', 'a:1:{s:21:\"ORIGINAL_OBJECT_TITLE\";s:8:\"Button01\";}', NULL),
(121, 0, 46, 'valueUpdated', 'Value Updated', 'require(DIR_MODULES.\'devices/SSensors_valueUpdated.php\');', 0, 0, '2017-03-10 16:06:26', 'a:5:{s:8:\"PROPERTY\";s:5:\"value\";s:9:\"NEW_VALUE\";s:2:\"36\";s:9:\"OLD_VALUE\";s:2:\"39\";s:6:\"SOURCE\";s:7:\"noolite\";s:21:\"ORIGINAL_OBJECT_TITLE\";s:11:\"HumSensor01\";}', NULL),
(122, 0, 55, 'dataUpdated', '', 'require(DIR_MODULES.\'devices/processHomebridgeMQTT.inc.php\');', 0, 0, '2022-08-25 14:10:27', '{\"PROPERTY\":\"from_response\",\"NEW_VALUE\":\"{\\\"Switch1\\\":{\\\"services\\\":{\\\"Switch 1\\\":\\\"Outlet\\\"},\\\"characteristics\\\":{\\\"Switch 1\\\":{\\\"On\\\":false,\\\"OutletInUse\\\":false}}},\\\"Switch2\\\":{\\\"services\\\":{\\\"Switch 2\\\":\\\"Outlet\\\"},\\\"characteristics\\\":{\\\"Switch 2', '/api.php/method/HomeBridge.dataUpdated?PROPERTY=from_response&NEW_VALUE={\"Switch1\":{\"services\":{\"Switch 1\":\"Outlet\"},\"characteristics\":{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}},\"Switch2\":{\"services\":{\"Switch 2\":\"Outlet\"},\"characteristics\":{\"Swit...'),
(125, 23, 0, 'deactivate', NULL, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/darknessmode_deactivate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2022-12-27 19:46:00', NULL, '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(158, 0, 58, 'alert', 'Sensor alert', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLeak_alert.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(126, 0, 57, 'colorUpdated', 'Color Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SRGB_colorUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(127, 0, 57, 'setColor', 'Color Set', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SRGB_setColor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(128, 0, 57, 'turnOn', 'Включить', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SRGB_turnOn.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(129, 0, 57, 'turnOff', 'Выключить', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SRGB_turnOff.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(130, 0, 58, 'statusUpdated', 'Status updated event', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLeak_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(131, 0, 59, 'statusUpdated', 'Status updated event', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSmoke_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(132, 0, 60, 'valueUpdated', 'Data Value updated event', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCounters_valueUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(133, 0, 39, 'setUpdatedText', 'Change updated text', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDevices_setUpdatedText.php\');\n/* end injection of {SDevices} */', 0, 0, '2020-01-04 17:27:01', '{\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/objects/?job=1854743'),
(134, 23, 0, 'activate', NULL, '/* begin injection of {SDevices} */\r\nrequire(DIR_MODULES.\'devices/darknessmode_activate.php\');\r\n/* end injection of {SDevices} */', 1, 0, '2022-12-27 20:41:00', '{\"STATE\":\"off\"}', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(135, 0, 62, 'valueUpdated', 'Value Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_valueUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(136, 0, 62, 'statusUpdated', 'Status Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(137, 0, 62, 'tempUp', 'Increase target temperature', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_tempUp.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(138, 0, 62, 'tempDown', 'Descrease target temperature', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_tempDown.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(139, 0, 63, 'motionDetected', 'Motion Detected', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCameras_motionDetected.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(140, 0, 63, 'updatePreview', 'Update preview code', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCameras_updatePreview.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(141, 0, 63, 'takeSnapshot', 'Take snapshot', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCameras_takeSnapshot.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(142, 0, 42, 'levelWorkUpdated', 'Level Work Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDimmers_levelWorkUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(143, 0, 63, 'takeSeries', 'Takes image series', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCameras_takeSeries.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(144, 0, 60, 'valueWorkUpdated', 'Work Value updated event', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCounters_valueWorkUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(145, 0, 60, 'refreshStats', 'Refreshes daily/monthly stats', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCounters_refreshStats.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(146, 0, 56, 'valueUpdated', 'Value Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SPowerSensors_valueUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(147, 0, 56, 'loadStatusChanged', 'Load Status Changed', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SPowerSensors_loadStatusChanged.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(148, 0, 62, 'switchEnable', 'Switch Enable', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_switchEnable.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(149, 0, 62, 'enable', 'Enable', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_enable.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(150, 0, 62, 'disable', 'Режим: Выкл', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_disable.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(151, 0, 65, 'turnOn', 'Включить', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SGroups_turnOn.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(152, 0, 65, 'turnOff', 'Выключить', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SGroups_turnOff.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(153, 0, 65, 'switch', 'Switch', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SGroups_switch.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(154, 0, 65, 'statusUpdated', 'Status Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SGroups_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(155, 0, 62, 'turnOn', 'Режим: Обычный', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_turnOn.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(156, 0, 62, 'turnOff', 'Режим: Эко', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_turnOff.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(157, 0, 42, 'statusUpdated', 'Status Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDimmers_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(159, 0, 59, 'alert', 'Sensor alert', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSmoke_alert.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(160, 0, 46, 'alert', 'Sensor alert', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSensors_alert.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(161, 0, 43, 'blockSensor', 'Блокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMotions_blockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(162, 0, 43, 'unblockSensor', 'Разблокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMotions_unblockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(163, 0, 44, 'blockSensor', 'Блокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenClose_blockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(164, 0, 44, 'unblockSensor', 'Разблокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenClose_unblockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(165, 0, 67, 'statusUpdated', 'Status updated event', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_statusUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(166, 0, 67, 'switch', 'Switch', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_switch.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(167, 0, 67, 'open', 'Open', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_open.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(168, 0, 67, 'close', 'Close', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_close.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(169, 0, 58, 'blockSensor', 'Блокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLeak_blockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(170, 0, 58, 'unblockSensor', 'Разблокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLeak_unblockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(171, 0, 59, 'blockSensor', 'Блокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSmoke_blockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(172, 0, 59, 'unblockSensor', 'Разблокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSmoke_unblockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(173, 0, 46, 'blockSensor', 'Блокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSensors_blockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(174, 0, 46, 'unblockSensor', 'Разблокировать датчик', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SSensors_unblockSensor.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(175, 0, 39, 'keepAlive', 'Alive update', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDevices_keepAlive.php\');\n/* end injection of {SDevices} */', 0, 0, '2020-01-04 17:24:01', '{\"ORIGINAL_OBJECT_TITLE\":\"Switch1\"}', '/ajax/scenes.html?op=click&id=55'),
(176, 0, 62, 'setTargetTemperature', 'Установить желаемую температуру', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SThermostats_setTargetTemperature.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(177, 0, 42, 'setLevel', 'Set brightness level', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDimmers_setLevel.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(178, 0, 68, 'setTargetTemperature', 'Set target temperature', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_setTargetTemperature.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(179, 0, 68, 'setThermostatMode', 'Set thermostat mode', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_setThermostatMode.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(180, 0, 68, 'setFanSpeedMode', 'Set fan speed mode', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_setFanSpeedMode.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(181, 0, 68, 'configUpdated', 'Config updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_configUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(182, 0, 68, 'fanSpeedUpdated', 'Fan Speed updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_fanSpeedUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(183, 0, 68, 'thermostatUpdated', 'Thermostat updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_thermostatUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(184, 0, 68, 'tempUp', 'Increase target temperature', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_tempUp.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(185, 0, 68, 'tempDown', 'Descrease target temperature', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SAirConditioners_tempDown.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(186, 0, 72, 'pause', 'Pause', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SVacuums_pause.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(187, 0, 73, 'pause', 'Pause', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMedias_pause.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(188, 0, 73, 'setSource', 'Set source', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMedias_setSource.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(189, 0, 73, 'setChannel', 'Set channel', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMedias_setChannel.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(190, 0, 73, 'setVolume', 'Set volume', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SMedias_setVolume.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(191, 0, 74, 'pause', 'Pause', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/STVs_pause.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(192, 0, 74, 'setSource', 'Set source', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/STVs_setSource.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(193, 0, 74, 'setChannel', 'Set channel', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/STVs_setChannel.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(194, 0, 74, 'setVolume', 'Set volume', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/STVs_setVolume.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(195, 0, 67, 'setLevel', 'Set open level', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_setLevel.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(196, 0, 67, 'levelUpdated', 'Level Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SOpenable_levelUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(197, 0, 60, 'pulseDetected', 'Meter pulse detection', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SCounters_pulseDetected.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(198, 0, 39, 'batteryLevelUpdated', 'Battery level updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SDevices_batteryLevelUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL),
(199, 0, 61, 'valueUpdated', 'Value Updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLightSensors_valueUpdated.php\');\n/* end injection of {SDevices} */', 1, 0, NULL, NULL, NULL),
(200, 0, 61, 'periodMinValueUpdated', 'Period Min value updated', '/* begin injection of {SDevices} */\nrequire(DIR_MODULES.\'devices/SLightSensors_periodMinValueUpdated.php\');\n/* end injection of {SDevices} */', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_notifications`
--

DROP TABLE IF EXISTS `module_notifications`;
CREATE TABLE IF NOT EXISTS `module_notifications` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `MODULE_NAME` char(50) NOT NULL DEFAULT '',
  `MESSAGE` varchar(255) NOT NULL DEFAULT '',
  `TYPE` char(20) NOT NULL DEFAULT 'info',
  `IS_READ` int(3) NOT NULL DEFAULT 0,
  `ADDED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mqtt`
--

DROP TABLE IF EXISTS `mqtt`;
CREATE TABLE IF NOT EXISTS `mqtt` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LOCATION_ID` int(10) NOT NULL DEFAULT 0,
  `UPDATED` datetime DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `PATH` varchar(255) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `PATH_WRITE` varchar(255) NOT NULL DEFAULT '',
  `QOS` int(3) NOT NULL DEFAULT 0,
  `RETAIN` int(3) NOT NULL DEFAULT 0,
  `DISP_FLAG` int(3) NOT NULL DEFAULT 0,
  `REPLACE_LIST` varchar(255) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(255) NOT NULL DEFAULT '',
  `READONLY` int(3) NOT NULL DEFAULT 0,
  `ONLY_NEW_VALUE` int(3) NOT NULL DEFAULT 0,
  `WRITE_TYPE` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mqtt`
--

INSERT INTO `mqtt` (`ID`, `TITLE`, `LOCATION_ID`, `UPDATED`, `VALUE`, `PATH`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `PATH_WRITE`, `QOS`, `RETAIN`, `DISP_FLAG`, `REPLACE_LIST`, `LINKED_METHOD`, `READONLY`, `ONLY_NEW_VALUE`, `WRITE_TYPE`) VALUES
(4, '$SYS/broker/uptime', 0, '2022-12-27 19:47:05', '127 seconds', '$SYS/broker/uptime', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(45, 'homebridge/from/response', 0, '2022-08-25 14:10:27', '{\"Switch1\":{\"services\":{\"Switch 1\":\"Outlet\"},\"characteristics\":{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}},\"Switch2\":{\"services\":{\"Switch 2\":\"Outlet\"},\"characteristics\":{\"Switch 2\":{\"On\":false,\"OutletInUse\":false}}},\"Switch3\":{\"services\":{\"Switch 3\":\"O', 'homebridge/from/response', 'HomeBridge', 'from_response', '', 0, 0, 0, '', '', 0, 0, 0),
(99, 'homebridge/from/response/HumSensor01/services/<#LANG_DEVICES_CURRENT_HUMIDITY#>', 0, '2018-10-30 13:25:18', 'HumiditySensor', 'homebridge/from/response/HumSensor01/services/<#LANG_DEVICES_CURRENT_HUMIDITY#>', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(46, 'homebridge/from/get', 0, '2017-08-10 15:31:57', '{\"name\":\"TempSensor01\",\"service_name\":\"Температура дома\",\"characteristic\":\"CurrentTemperature\"}', 'homebridge/from/get', 'HomeBridge', 'from_get', '', 0, 0, 0, '', '', 0, 0, 0),
(47, 'homebridge/from/identify', 0, '2017-03-21 16:40:45', '{\"name\":\"Noo3\",\"manufacturer\":\"homebridge-mqtt\",\"model\":\"v0.4.2\",\"serialnumber\":\"2017-03-20T09:17\"}', 'homebridge/from/identify', 'HomeBridge', 'from_identify', '', 0, 0, 0, '', '', 0, 0, 0),
(48, 'homebridge/from/set', 0, '2017-08-10 15:32:20', '{\"name\":\"Switch1\",\"service_name\":\"Switch 1\",\"characteristic\":\"On\",\"value\":false}', 'homebridge/from/set', 'HomeBridge', 'from_set', '', 0, 0, 0, '', '', 0, 0, 0),
(49, 'homebridge/to/add', 0, '2022-12-27 19:45:52', '{\"name\":\"MotionSensor1\",\"service_name\":\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\",\"service\":\"MotionSensor\"}', 'homebridge/to/add', 'HomeBridge', 'to_add', '', 0, 0, 0, '', '', 0, 0, 0),
(58, 'homebridge/from/response/ack', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/ack', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(50, 'homebridge/to/add/service', 0, NULL, '', 'homebridge/to/add/service', 'HomeBridge', 'to_add_service', '', 0, 0, 0, '', '', 0, 0, 0),
(51, 'homebridge/to/get', 0, '2022-12-27 19:45:52', '{\"name\": \"*\"}', 'homebridge/to/get', 'HomeBridge', 'to_get', '', 0, 0, 0, '', '', 0, 0, 0),
(52, 'homebridge/to/remove', 0, '2019-02-28 16:14:38', '{\"name\":\"MotionSensor1\"}', 'homebridge/to/remove', 'HomeBridge', 'to_remove', '', 0, 0, 0, '', '', 0, 0, 0),
(53, 'homebridge/to/remove/service', 0, NULL, '', 'homebridge/to/remove/service', 'HomeBridge', 'to_remove_service', '', 0, 0, 0, '', '', 0, 0, 0),
(54, 'homebridge/to/set', 0, '2022-12-27 19:45:52', '{\"name\":\"MotionSensor1\",\"service_name\":\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\",\"service\":\"MotionSensor\",\"characteristic\":\"MotionDetected\",\"value\":0}', 'homebridge/to/set', 'HomeBridge', 'to_set', '', 0, 0, 0, '', '', 0, 0, 0),
(105, 'homebridge/from/response/MotionSensor1/services/<#LANG_DEVICES_MOTION#> 1', 0, '2018-10-30 13:25:18', 'MotionSensor', 'homebridge/from/response/MotionSensor1/services/<#LANG_DEVICES_MOTION#> 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(59, 'homebridge/from/response/message', 0, '2022-08-25 14:10:26', 'name \'MotionSensor1\' is already used.', 'homebridge/from/response/message', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(55, 'homebridge/to/set/accessoryinformation', 0, NULL, '', 'homebridge/to/set/accessoryinformation', 'HomeBridge', 'to_set_accessoryinformation', '', 0, 0, 0, '', '', 0, 0, 0),
(56, 'homebridge/to/set/reachability', 0, NULL, '', 'homebridge/to/set/reachability', 'HomeBridge', 'to_set_reachability', '', 0, 0, 0, '', '', 0, 0, 0),
(57, 'homebridge/from/connected', 0, '2021-05-04 22:05:26', 'homebridge-mqtt v0.6.2 started', 'homebridge/from/connected', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(60, 'homebridge/from/response/Switch1/services/Switch 1', 0, '2022-08-25 14:10:26', 'Outlet', 'homebridge/from/response/Switch1/services/Switch 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(61, 'homebridge/from/response/Switch1/services', 0, '2022-08-25 14:10:26', '{\"Switch 1\":\"Outlet\"}', 'homebridge/from/response/Switch1/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(62, 'homebridge/from/response/Switch1/characteristics/Switch 1/On', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch1/characteristics/Switch 1/On', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(63, 'homebridge/from/response/Switch1/characteristics/Switch 1/OutletInUse', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch1/characteristics/Switch 1/OutletInUse', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(64, 'homebridge/from/response/Switch1/characteristics/Switch 1', 0, '2022-08-25 14:10:26', '{\"On\":false,\"OutletInUse\":false}', 'homebridge/from/response/Switch1/characteristics/Switch 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(65, 'homebridge/from/response/Switch1/characteristics', 0, '2022-08-25 14:10:26', '{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}', 'homebridge/from/response/Switch1/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(66, 'homebridge/from/response/Switch1', 0, '2022-08-25 14:10:26', '{\"services\":{\"Switch 1\":\"Outlet\"},\"characteristics\":{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}}', 'homebridge/from/response/Switch1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(67, 'homebridge/from/response/Switch2/services/Switch 2', 0, '2022-08-25 14:10:26', 'Outlet', 'homebridge/from/response/Switch2/services/Switch 2', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(68, 'homebridge/from/response/Switch2/services', 0, '2022-08-25 14:10:26', '{\"Switch 2\":\"Outlet\"}', 'homebridge/from/response/Switch2/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(69, 'homebridge/from/response/Switch2/characteristics/Switch 2/On', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch2/characteristics/Switch 2/On', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(70, 'homebridge/from/response/Switch2/characteristics/Switch 2/OutletInUse', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch2/characteristics/Switch 2/OutletInUse', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(71, 'homebridge/from/response/Switch2/characteristics/Switch 2', 0, '2022-08-25 14:10:26', '{\"On\":false,\"OutletInUse\":false}', 'homebridge/from/response/Switch2/characteristics/Switch 2', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(72, 'homebridge/from/response/Switch2/characteristics', 0, '2022-08-25 14:10:26', '{\"Switch 2\":{\"On\":false,\"OutletInUse\":false}}', 'homebridge/from/response/Switch2/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(73, 'homebridge/from/response/Switch2', 0, '2022-08-25 14:10:26', '{\"services\":{\"Switch 2\":\"Outlet\"},\"characteristics\":{\"Switch 2\":{\"On\":false,\"OutletInUse\":false}}}', 'homebridge/from/response/Switch2', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(74, 'homebridge/from/response/Switch3/services/Switch 3', 0, '2022-08-25 14:10:26', 'Outlet', 'homebridge/from/response/Switch3/services/Switch 3', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(75, 'homebridge/from/response/Switch3/services', 0, '2022-08-25 14:10:26', '{\"Switch 3\":\"Outlet\"}', 'homebridge/from/response/Switch3/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(76, 'homebridge/from/response/Switch3/characteristics/Switch 3/On', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch3/characteristics/Switch 3/On', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(77, 'homebridge/from/response/Switch3/characteristics/Switch 3/OutletInUse', 0, '2022-08-25 14:10:26', '0', 'homebridge/from/response/Switch3/characteristics/Switch 3/OutletInUse', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(78, 'homebridge/from/response/Switch3/characteristics/Switch 3', 0, '2022-08-25 14:10:26', '{\"On\":false,\"OutletInUse\":false}', 'homebridge/from/response/Switch3/characteristics/Switch 3', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(79, 'homebridge/from/response/Switch3/characteristics', 0, '2022-08-25 14:10:26', '{\"Switch 3\":{\"On\":false,\"OutletInUse\":false}}', 'homebridge/from/response/Switch3/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(80, 'homebridge/from/response/Switch3', 0, '2022-08-25 14:10:26', '{\"services\":{\"Switch 3\":\"Outlet\"},\"characteristics\":{\"Switch 3\":{\"On\":false,\"OutletInUse\":false}}}', 'homebridge/from/response/Switch3', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(81, 'homebridge/from/response/TempSensor01/services/Температура дома', 0, '2018-10-30 12:54:11', 'TemperatureSensor', 'homebridge/from/response/TempSensor01/services/Температура дома', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(82, 'homebridge/from/response/TempSensor01/services', 0, '2022-08-25 14:10:26', '{\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\":\"TemperatureSensor\"}', 'homebridge/from/response/TempSensor01/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(103, 'homebridge/from/response/TempSensor01/characteristics/<#LANG_DEVICES_CURRENT_TEMPERATURE#>/CurrentTemperature', 0, '2018-10-30 13:25:18', '20.8', 'homebridge/from/response/TempSensor01/characteristics/<#LANG_DEVICES_CURRENT_TEMPERATURE#>/CurrentTemperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(83, 'homebridge/from/response/TempSensor01/characteristics/Температура дома/CurrentTemperature', 0, '2018-10-30 12:54:11', '20.8', 'homebridge/from/response/TempSensor01/characteristics/Температура дома/CurrentTemperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(84, 'homebridge/from/response/TempSensor01/characteristics/Температура дома', 0, '2018-10-30 12:54:11', '{\"CurrentTemperature\":20.8}', 'homebridge/from/response/TempSensor01/characteristics/Температура дома', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(85, 'homebridge/from/response/TempSensor01/characteristics', 0, '2022-08-25 14:10:26', '{\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\":{\"CurrentTemperature\":20.8}}', 'homebridge/from/response/TempSensor01/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(86, 'homebridge/from/response/TempSensor01', 0, '2022-08-25 14:10:26', '{\"services\":{\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\":\"TemperatureSensor\"},\"characteristics\":{\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\":{\"CurrentTemperature\":20.8}}}', 'homebridge/from/response/TempSensor01', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(111, 'homebridge/from/response/HumSensor01/services/Humidity', 0, '2018-10-30 13:27:38', 'HumiditySensor', 'homebridge/from/response/HumSensor01/services/Humidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(87, 'homebridge/from/response/HumSensor01/services/Влажность дома', 0, '2018-10-30 11:48:38', 'HumiditySensor', 'homebridge/from/response/HumSensor01/services/Влажность дома', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(88, 'homebridge/from/response/HumSensor01/services', 0, '2022-08-25 14:10:26', '{\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\":\"HumiditySensor\"}', 'homebridge/from/response/HumSensor01/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(100, 'homebridge/from/response/HumSensor01/characteristics/<#LANG_DEVICES_CURRENT_HUMIDITY#>/CurrentRelativeHumidity', 0, '2018-10-30 13:25:18', '36', 'homebridge/from/response/HumSensor01/characteristics/<#LANG_DEVICES_CURRENT_HUMIDITY#>/CurrentRelativeHumidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(89, 'homebridge/from/response/HumSensor01/characteristics/Влажность дома/CurrentRelativeHumidity', 0, '2018-10-30 11:48:38', '36', 'homebridge/from/response/HumSensor01/characteristics/Влажность дома/CurrentRelativeHumidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(90, 'homebridge/from/response/HumSensor01/characteristics/Влажность дома', 0, '2018-10-30 11:48:38', '{\"CurrentRelativeHumidity\":36}', 'homebridge/from/response/HumSensor01/characteristics/Влажность дома', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(91, 'homebridge/from/response/HumSensor01/characteristics', 0, '2022-08-25 14:10:27', '{\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\":{\"CurrentRelativeHumidity\":36}}', 'homebridge/from/response/HumSensor01/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(102, 'homebridge/from/response/TempSensor01/services/<#LANG_DEVICES_CURRENT_TEMPERATURE#>', 0, '2018-10-30 13:25:18', 'TemperatureSensor', 'homebridge/from/response/TempSensor01/services/<#LANG_DEVICES_CURRENT_TEMPERATURE#>', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(92, 'homebridge/from/response/HumSensor01', 0, '2022-08-25 14:10:27', '{\"services\":{\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\":\"HumiditySensor\"},\"characteristics\":{\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\":{\"CurrentRelativeHumidity\":36}}}', 'homebridge/from/response/HumSensor01', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(114, 'homebridge/from/response/MotionSensor1/services/Motion sensor 1', 0, '2018-10-30 13:27:38', 'MotionSensor', 'homebridge/from/response/MotionSensor1/services/Motion sensor 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(93, 'homebridge/from/response/MotionSensor1/services/Датчик движения 1', 0, '2022-08-25 14:10:27', 'MotionSensor', 'homebridge/from/response/MotionSensor1/services/Датчик движения 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(94, 'homebridge/from/response/MotionSensor1/services', 0, '2022-08-25 14:10:27', '{\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\":\"MotionSensor\"}', 'homebridge/from/response/MotionSensor1/services', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(106, 'homebridge/from/response/MotionSensor1/characteristics/<#LANG_DEVICES_MOTION#> 1/MotionDetected', 0, '2018-10-30 13:25:18', '', 'homebridge/from/response/MotionSensor1/characteristics/<#LANG_DEVICES_MOTION#> 1/MotionDetected', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(95, 'homebridge/from/response/MotionSensor1/characteristics/Датчик движения 1/MotionDetected', 0, '2022-08-25 14:10:27', '0', 'homebridge/from/response/MotionSensor1/characteristics/Датчик движения 1/MotionDetected', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(96, 'homebridge/from/response/MotionSensor1/characteristics/Датчик движения 1', 0, '2022-08-25 14:10:27', '{\"MotionDetected\":false}', 'homebridge/from/response/MotionSensor1/characteristics/Датчик движения 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(97, 'homebridge/from/response/MotionSensor1/characteristics', 0, '2022-08-25 14:10:27', '{\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\":{\"MotionDetected\":false}}', 'homebridge/from/response/MotionSensor1/characteristics', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(98, 'homebridge/from/response/MotionSensor1', 0, '2022-08-25 14:10:27', '{\"services\":{\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\":\"MotionSensor\"},\"characteristics\":{\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\":{\"MotionDetected\":false}}}', 'homebridge/from/response/MotionSensor1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(108, 'homebridge/from/response/TempSensor01/services/Temperature', 0, '2018-10-30 13:27:38', 'TemperatureSensor', 'homebridge/from/response/TempSensor01/services/Temperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(101, 'homebridge/from/response/HumSensor01/characteristics/<#LANG_DEVICES_CURRENT_HUMIDITY#>', 0, '2018-10-30 13:25:18', '{\"CurrentRelativeHumidity\":36}', 'homebridge/from/response/HumSensor01/characteristics/<#LANG_DEVICES_CURRENT_HUMIDITY#>', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(104, 'homebridge/from/response/TempSensor01/characteristics/<#LANG_DEVICES_CURRENT_TEMPERATURE#>', 0, '2018-10-30 13:25:18', '{\"CurrentTemperature\":20.8}', 'homebridge/from/response/TempSensor01/characteristics/<#LANG_DEVICES_CURRENT_TEMPERATURE#>', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(107, 'homebridge/from/response/MotionSensor1/characteristics/<#LANG_DEVICES_MOTION#> 1', 0, '2018-10-30 13:25:18', '{\"MotionDetected\":false}', 'homebridge/from/response/MotionSensor1/characteristics/<#LANG_DEVICES_MOTION#> 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(109, 'homebridge/from/response/TempSensor01/characteristics/Temperature/CurrentTemperature', 0, '2018-10-30 13:27:38', '20.8', 'homebridge/from/response/TempSensor01/characteristics/Temperature/CurrentTemperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(110, 'homebridge/from/response/TempSensor01/characteristics/Temperature', 0, '2018-10-30 13:27:38', '{\"CurrentTemperature\":20.8}', 'homebridge/from/response/TempSensor01/characteristics/Temperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(112, 'homebridge/from/response/HumSensor01/characteristics/Humidity/CurrentRelativeHumidity', 0, '2018-10-30 13:27:38', '36', 'homebridge/from/response/HumSensor01/characteristics/Humidity/CurrentRelativeHumidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(113, 'homebridge/from/response/HumSensor01/characteristics/Humidity', 0, '2018-10-30 13:27:38', '{\"CurrentRelativeHumidity\":36}', 'homebridge/from/response/HumSensor01/characteristics/Humidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(115, 'homebridge/from/response/MotionSensor1/characteristics/Motion sensor 1/MotionDetected', 0, '2018-10-30 13:27:38', '', 'homebridge/from/response/MotionSensor1/characteristics/Motion sensor 1/MotionDetected', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(116, 'homebridge/from/response/MotionSensor1/characteristics/Motion sensor 1', 0, '2018-10-30 13:27:38', '{\"MotionDetected\":false}', 'homebridge/from/response/MotionSensor1/characteristics/Motion sensor 1', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(117, 'homebridge/from/response/TempSensor01/services/Температура', 0, '2022-08-25 14:10:26', 'TemperatureSensor', 'homebridge/from/response/TempSensor01/services/Температура', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(118, 'homebridge/from/response/TempSensor01/characteristics/Температура/CurrentTemperature', 0, '2022-08-25 14:10:26', '20.8', 'homebridge/from/response/TempSensor01/characteristics/Температура/CurrentTemperature', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(119, 'homebridge/from/response/TempSensor01/characteristics/Температура', 0, '2022-08-25 14:10:26', '{\"CurrentTemperature\":20.8}', 'homebridge/from/response/TempSensor01/characteristics/Температура', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(120, 'homebridge/from/response/HumSensor01/services/Влажность', 0, '2022-08-25 14:10:26', 'HumiditySensor', 'homebridge/from/response/HumSensor01/services/Влажность', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(121, 'homebridge/from/response/HumSensor01/characteristics/Влажность/CurrentRelativeHumidity', 0, '2022-08-25 14:10:26', '36', 'homebridge/from/response/HumSensor01/characteristics/Влажность/CurrentRelativeHumidity', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(122, 'homebridge/from/response/HumSensor01/characteristics/Влажность', 0, '2022-08-25 14:10:26', '{\"CurrentRelativeHumidity\":36}', 'homebridge/from/response/HumSensor01/characteristics/Влажность', '', '', '', 0, 0, 0, '', '', 0, 0, 0),
(123, 'homebridge/from/response/request_id', 0, '2022-08-25 14:10:27', '0', 'homebridge/from/response/request_id', '', '', '', 0, 0, 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_queue`
--

DROP TABLE IF EXISTS `mqtt_queue`;
CREATE TABLE IF NOT EXISTS `mqtt_queue` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PATH` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myblocks`
--

DROP TABLE IF EXISTS `myblocks`;
CREATE TABLE IF NOT EXISTS `myblocks` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `CATEGORY_ID` int(10) NOT NULL DEFAULT 0,
  `BLOCK_TYPE` char(10) NOT NULL DEFAULT '',
  `BLOCK_COLOR` int(10) NOT NULL DEFAULT 0,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myblocks_categories`
--

DROP TABLE IF EXISTS `myblocks_categories`;
CREATE TABLE IF NOT EXISTS `myblocks_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(255) NOT NULL DEFAULT '',
  `LIST` varchar(255) NOT NULL DEFAULT '',
  `ADDED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noocommands`
--

DROP TABLE IF EXISTS `noocommands`;
CREATE TABLE IF NOT EXISTS `noocommands` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `COMMAND_ID` int(10) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(100) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(100) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(100) NOT NULL DEFAULT '',
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noodevices`
--

DROP TABLE IF EXISTS `noodevices`;
CREATE TABLE IF NOT EXISTS `noodevices` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `DEVICE_TYPE` varchar(255) NOT NULL DEFAULT '',
  `ADDRESS` varchar(255) NOT NULL DEFAULT '',
  `SCENARIO_ADDRESS` varchar(255) NOT NULL DEFAULT '',
  `UPDATED` datetime DEFAULT NULL,
  `LOCATION_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DESCRIPTION` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nooscenarios`
--

DROP TABLE IF EXISTS `nooscenarios`;
CREATE TABLE IF NOT EXISTS `nooscenarios` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `MASTER_DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `DEVICE_ID` int(10) NOT NULL DEFAULT 0,
  `COMMAND_ID` int(10) NOT NULL DEFAULT 0,
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nooscenarios`
--

INSERT INTO `nooscenarios` (`ID`, `MASTER_DEVICE_ID`, `DEVICE_ID`, `COMMAND_ID`, `VALUE`) VALUES
(7, 5, 11, 27, '0'),
(8, 5, 13, 28, '0'),
(9, 5, 14, 29, '0');

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
CREATE TABLE IF NOT EXISTS `objects` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `CLASS_ID` int(10) NOT NULL DEFAULT 0,
  `DESCRIPTION` text DEFAULT NULL,
  `LOCATION_ID` int(10) NOT NULL DEFAULT 0,
  `KEEP_HISTORY` int(10) NOT NULL DEFAULT 0,
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=592 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`ID`, `TITLE`, `CLASS_ID`, `DESCRIPTION`, `LOCATION_ID`, `KEEP_HISTORY`, `SYSTEM`) VALUES
(76, 'Switch3', 41, 'Switch 3', 6, 0, 'sdevice3'),
(6, 'ClockChime', 7, '', 0, 0, ''),
(7, 'ThisComputer', 10, '', 0, 0, ''),
(16, 'Security', 21, '', 0, 0, ''),
(17, 'System', 21, '', 0, 0, ''),
(18, 'Communication', 21, '', 0, 0, ''),
(19, 'EconomMode', 24, '', 0, 0, ''),
(20, 'NobodyHomeMode', 24, '', 0, 0, ''),
(21, 'SecurityArmedMode', 24, '', 0, 0, ''),
(22, 'GuestsMode', 24, '', 0, 0, ''),
(23, 'DarknessMode', 24, '', 0, 0, ''),
(24, 'Livingroom', 25, '', 4, 0, ''),
(75, 'Switch2', 41, 'Switch 2', 0, 0, 'sdevice2'),
(28, 'Bedroom', 25, '', 5, 0, ''),
(29, 'Kitchen', 25, '', 1, 0, ''),
(30, 'Hall', 25, '', 6, 0, ''),
(53, 'Bathroom', 25, '', 7, 0, ''),
(47, 'NightMode', 24, '', 0, 0, ''),
(51, 'MotionSensor1', 43, '<#LANG_DEVICES_MOTION#> 1', 6, 0, 'sdevice6'),
(54, 'Kinderroom', 25, '', 0, 0, ''),
(55, 'Toilet', 25, '', 8, 0, ''),
(68, 'admin', 32, '', 0, 0, ''),
(74, 'Switch1', 41, 'Switch 1', 4, 0, 'sdevice1'),
(79, 'TempSensor01', 47, '<#LANG_DEVICES_CURRENT_TEMPERATURE#>', 4, 0, 'sdevice4'),
(80, 'HumSensor01', 48, '<#LANG_DEVICES_CURRENT_HUMIDITY#>', 4, 0, 'sdevice5'),
(108, 'HomeBridge', 55, '', 0, 0, ''),
(591, 'ow_fact', 70, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `OPENWEATHER_CITY`
--

DROP TABLE IF EXISTS `OPENWEATHER_CITY`;
CREATE TABLE IF NOT EXISTS `OPENWEATHER_CITY` (
  `CITY_ID` int(10) NOT NULL,
  `COUNTRY_ID` int(10) NOT NULL,
  `CITY_NAME` varchar(255) NOT NULL,
  `CITY_LAT` float(10,6) NOT NULL,
  `CITY_LNG` float(10,6) NOT NULL,
  `LM_DATE` datetime NOT NULL,
  PRIMARY KEY (`CITY_ID`),
  KEY `FK_OW_CITY__COUNTRY_ID` (`COUNTRY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `OPENWEATHER_CITY`
--

INSERT INTO `OPENWEATHER_CITY` (`CITY_ID`, `COUNTRY_ID`, `CITY_NAME`, `CITY_LAT`, `CITY_LNG`, `LM_DATE`) VALUES
(819827, 186, 'Razvilka', 55.591667, 37.740833, '0000-00-00 00:00:00'),
(524901, 186, 'Moscow', 55.752220, 37.615555, '0000-00-00 00:00:00'),
(1271881, 102, 'Firozpur Jhirka', 27.799999, 76.949997, '0000-00-00 00:00:00'),
(1283240, 164, 'Kathmandu', 27.716667, 85.316666, '0000-00-00 00:00:00'),
(703448, 224, 'Kiev', 50.433334, 30.516666, '0000-00-00 00:00:00'),
(1282898, 164, 'Pokhara', 28.233334, 83.983330, '0000-00-00 00:00:00'),
(3632308, 231, 'Merida', 8.598333, -71.144997, '0000-00-00 00:00:00'),
(1273294, 102, 'Delhi', 28.666668, 77.216667, '0000-00-00 00:00:00'),
(502069, 186, 'Reshetnikovo', 56.450001, 36.566666, '0000-00-00 00:00:00'),
(3645532, 231, 'Ciudad Bolivar', 8.122222, -63.549721, '0000-00-00 00:00:00'),
(529368, 186, 'Marfino', 55.702778, 37.382221, '0000-00-00 00:00:00'),
(462755, 186, 'Zhukovskiy', 55.595280, 38.120277, '0000-00-00 00:00:00'),
(502018, 186, 'Reutov', 55.759445, 37.861668, '0000-00-00 00:00:00'),
(538601, 186, 'Kurovskoye', 55.578335, 38.910831, '0000-00-00 00:00:00'),
(463355, 186, 'Zheleznodorozhnyy', 55.750278, 38.004166, '0000-00-00 00:00:00'),
(560756, 186, 'Golitsyno', 55.612221, 36.983334, '0000-00-00 00:00:00'),
(509820, 186, 'Petrozavodsk', 61.784912, 34.346909, '0000-00-00 00:00:00'),
(498817, 186, 'Saint Petersburg', 59.894444, 30.264168, '0000-00-00 00:00:00'),
(547560, 186, 'Klimovsk', 55.364723, 37.525002, '0000-00-00 00:00:00'),
(1496747, 186, 'Novosibirsk', 55.041111, 82.934441, '0000-00-00 00:00:00'),
(709717, 224, 'Donetsk', 48.000000, 37.799999, '0000-00-00 00:00:00'),
(555746, 186, 'Istra', 55.917778, 36.864166, '0000-00-00 00:00:00'),
(712969, 224, 'Bakhchysaray', 44.750000, 33.866669, '0000-00-00 00:00:00'),
(569591, 186, 'Chekhov', 55.143055, 37.471111, '0000-00-00 00:00:00'),
(532477, 186, 'Lyubuchany', 55.251110, 37.545555, '0000-00-00 00:00:00'),
(471457, 186, 'Vostryakovo', 55.400555, 37.811111, '0000-00-00 00:00:00'),
(711660, 224, 'Boryspil', 50.349998, 30.950001, '0000-00-00 00:00:00'),
(564719, 186, 'Dubna', 56.733334, 37.166668, '0000-00-00 00:00:00'),
(564912, 186, 'Druzhba', 55.885555, 37.740276, '0000-00-00 00:00:00'),
(571557, 186, 'Bronnitsy', 55.419445, 38.270832, '0000-00-00 00:00:00'),
(563705, 186, 'Dzerzhinskiy', 55.628613, 37.846943, '0000-00-00 00:00:00'),
(532657, 186, 'Lytkarino', 55.581390, 37.905834, '0000-00-00 00:00:00'),
(523812, 186, 'Mytishchi', 55.908890, 37.733891, '0000-00-00 00:00:00'),
(503977, 186, 'Pushkino', 56.017223, 37.866669, '0000-00-00 00:00:00'),
(505597, 186, 'Pravdinskiy', 56.066666, 37.849998, '0000-00-00 00:00:00'),
(463826, 186, 'Zelenogradskiy', 56.099998, 37.916668, '0000-00-00 00:00:00'),
(580597, 186, 'Ashukino', 56.160000, 37.950001, '0000-00-00 00:00:00'),
(549373, 186, 'Khotkovo', 56.256989, 37.995441, '0000-00-00 00:00:00'),
(497165, 186, 'Semkhoz', 56.283333, 38.066666, '0000-00-00 00:00:00'),
(496638, 186, 'Sergiyev Posad', 56.299999, 38.133331, '0000-00-00 00:00:00'),
(580881, 186, 'Arsaki', 56.380001, 38.480000, '0000-00-00 00:00:00'),
(487095, 186, 'Strunino', 56.383331, 38.566666, '0000-00-00 00:00:00'),
(583350, 186, 'Aleksandrov', 56.400002, 38.709999, '0000-00-00 00:00:00'),
(552977, 186, 'Karabanovo', 56.316666, 38.700001, '0000-00-00 00:00:00'),
(548278, 186, 'Kirzhach', 56.150002, 38.866669, '0000-00-00 00:00:00'),
(515024, 186, 'Orekhovo-Zuyevo', 55.810833, 38.971943, '0000-00-00 00:00:00'),
(535243, 186, 'Likino-Dulevo', 55.711666, 38.954445, '0000-00-00 00:00:00'),
(566950, 186, 'Davydovo', 55.609722, 38.856945, '0000-00-00 00:00:00'),
(557132, 186, 'Ilinskiy Pogost', 55.477222, 38.911945, '0000-00-00 00:00:00'),
(468250, 186, 'Yegoryevsk', 55.378334, 39.041111, '0000-00-00 00:00:00'),
(562445, 186, 'Fosforitnyy', 55.326111, 38.900002, '0000-00-00 00:00:00'),
(549531, 186, 'Khorlovo', 55.335278, 38.813057, '0000-00-00 00:00:00'),
(534174, 186, 'Lopatinskiy', 55.340557, 38.725555, '0000-00-00 00:00:00'),
(531098, 186, 'Malino', 55.111111, 38.180000, '0000-00-00 00:00:00'),
(526652, 186, 'Mikhnevo', 55.127220, 37.952221, '0000-00-00 00:00:00'),
(526651, 186, 'Mikhnevo', 55.134724, 37.944721, '0000-00-00 00:00:00'),
(487441, 186, 'Stolbovaya', 55.252777, 37.485279, '0000-00-00 00:00:00'),
(540030, 186, 'Kubinka', 55.583889, 36.689999, '0000-00-00 00:00:00'),
(505824, 186, 'Povarovo', 56.066666, 37.049999, '0000-00-00 00:00:00'),
(557382, 186, 'Iksha', 56.166668, 37.516666, '0000-00-00 00:00:00'),
(565955, 186, 'Dmitrov', 56.349998, 37.516666, '0000-00-00 00:00:00'),
(492333, 186, 'Skoropuskovskiy', 56.366669, 38.166668, '0000-00-00 00:00:00'),
(529638, 186, 'Mamontovka', 55.999443, 37.814167, '0000-00-00 00:00:00'),
(694320, 224, 'Shchebetovka', 44.933334, 35.150002, '0000-00-00 00:00:00'),
(1261481, 102, 'New Delhi', 28.612820, 77.231140, '0000-00-00 00:00:00'),
(1271951, 102, 'Faridabad', 28.433332, 77.316666, '0000-00-00 00:00:00'),
(1260637, 102, 'Palwal', 28.150000, 77.333336, '0000-00-00 00:00:00'),
(1270000, 102, 'Hodal', 27.900000, 77.366669, '0000-00-00 00:00:00'),
(1266073, 102, 'Kosi', 27.799999, 77.433334, '0000-00-00 00:00:00'),
(1274343, 102, 'Chhata', 27.716667, 77.500000, '0000-00-00 00:00:00'),
(1263364, 102, 'Mathura', 27.500000, 77.683334, '0000-00-00 00:00:00'),
(1271059, 102, 'Gokul', 27.450001, 77.716667, '0000-00-00 00:00:00'),
(1271956, 102, 'Farah', 27.333332, 77.766670, '0000-00-00 00:00:00'),
(1279259, 102, 'Agra', 27.183332, 78.016670, '0000-00-00 00:00:00'),
(1266510, 102, 'Kiraoli', 27.150000, 77.783333, '0000-00-00 00:00:00'),
(1271900, 102, 'Fatehpur Sikri', 27.100000, 77.666664, '0000-00-00 00:00:00'),
(1276128, 102, 'Bharatpur', 27.216667, 77.483330, '0000-00-00 00:00:00'),
(1264323, 102, 'Mahwah', 27.049999, 76.933334, '0000-00-00 00:00:00'),
(1273369, 102, 'Dausa', 26.883333, 76.333336, '0000-00-00 00:00:00'),
(1276767, 102, 'Basi', 26.833332, 76.033333, '0000-00-00 00:00:00'),
(1269515, 102, 'Jaipur', 26.916668, 75.816666, '0000-00-00 00:00:00'),
(1263649, 102, 'Manoharpur', 27.299999, 75.949997, '0000-00-00 00:00:00'),
(1256705, 102, 'Shahpura', 27.383333, 75.966667, '0000-00-00 00:00:00'),
(3645528, 231, 'Ciudad Guayana', 8.353333, -62.652779, '0000-00-00 00:00:00'),
(3625710, 231, 'Upata', 8.008611, -62.398888, '0000-00-00 00:00:00'),
(572090, 186, 'Borovoy', 64.583336, 32.133331, '0000-00-00 00:00:00'),
(471501, 186, 'Vostochnyy', 55.816666, 37.866669, '0000-00-00 00:00:00'),
(3641099, 231, 'El Vigia', 8.621944, -71.650558, '0000-00-00 00:00:00'),
(3644417, 231, 'Ejido', 8.551389, -71.237503, '0000-00-00 00:00:00'),
(473021, 186, 'Vnukovo', 55.615002, 37.219166, '0000-00-00 00:00:00'),
(516436, 186, 'Obninsk', 55.096943, 36.610279, '0000-00-00 00:00:00'),
(524649, 186, 'Mstikhino', 54.559471, 36.127769, '0000-00-00 00:00:00'),
(579838, 186, 'Babynino', 54.389999, 35.730000, '0000-00-00 00:00:00'),
(523186, 186, 'Navlya', 52.828056, 34.498890, '0000-00-00 00:00:00'),
(582358, 186, 'Altukhovo', 52.669998, 34.360001, '0000-00-00 00:00:00'),
(546633, 186, 'Kokorevka', 52.587223, 34.277779, '0000-00-00 00:00:00'),
(485817, 186, 'Suzemka', 52.317780, 34.068890, '0000-00-00 00:00:00'),
(709584, 224, 'Druzhba', 52.042778, 33.945278, '0000-00-00 00:00:00'),
(688501, 224, 'Yampil', 51.950001, 33.783333, '0000-00-00 00:00:00'),
(711999, 224, 'Bobrovytsya', 50.750000, 31.383333, '0000-00-00 00:00:00'),
(550280, 186, 'Khimki', 55.901669, 37.437500, '0000-00-00 00:00:00'),
(542374, 186, 'Krasnogorsk', 55.822498, 37.318054, '0000-00-00 00:00:00'),
(522730, 186, 'Nemchinovka', 55.722778, 37.366390, '0000-00-00 00:00:00'),
(476372, 186, 'Vatutinki', 55.498333, 37.332500, '0000-00-00 00:00:00'),
(468671, 186, 'Yasnogorsk', 54.480278, 37.697498, '0000-00-00 00:00:00'),
(464343, 186, 'Zasechnoye', 53.109165, 45.076389, '0000-00-00 00:00:00'),
(500400, 186, 'Russkiy Kameshkir', 52.858891, 46.089169, '0000-00-00 00:00:00'),
(582926, 186, 'Alekseyevka', 52.299999, 48.020000, '0000-00-00 00:00:00'),
(608668, 121, 'Oral', 51.233334, 51.366669, '0000-00-00 00:00:00'),
(610386, 121, 'Bayganin', 48.694721, 55.874168, '0000-00-00 00:00:00'),
(1265961, 102, 'Kotputli', 27.716667, 76.199997, '0000-00-00 00:00:00'),
(1276589, 102, 'Behror', 27.883333, 76.283333, '0000-00-00 00:00:00'),
(1276666, 102, 'Bawal', 28.083332, 76.583336, '0000-00-00 00:00:00'),
(1272822, 102, 'Dharuhera', 28.216667, 76.783333, '0000-00-00 00:00:00'),
(1270642, 102, 'Gurgaon', 28.466667, 77.033333, '0000-00-00 00:00:00'),
(523750, 186, 'Naberezhnyye Chelny', 55.756111, 52.428890, '0000-00-00 00:00:00'),
(625144, 34, 'Minsk', 53.900002, 27.566668, '0000-00-00 00:00:00'),
(571170, 186, 'Bugulma', 54.549999, 52.799999, '0000-00-00 00:00:00'),
(552974, 186, 'Karabash', 54.700001, 52.566666, '0000-00-00 00:00:00'),
(2014006, 186, 'Ussuriysk', 43.798611, 131.950836, '0000-00-00 00:00:00'),
(689037, 224, 'Vorokhta', 48.286945, 24.571943, '0000-00-00 00:00:00'),
(1253405, 102, 'Varanasi', 25.333332, 83.000000, '0000-00-00 00:00:00'),
(1258642, 102, 'Ramnagar', 25.283333, 83.033333, '0000-00-00 00:00:00'),
(1262634, 102, 'Mughal Sarai', 25.299999, 83.116669, '0000-00-00 00:00:00'),
(1257022, 102, 'Satna', 24.583332, 80.833336, '0000-00-00 00:00:00'),
(1260454, 102, 'Panna', 24.716667, 80.199997, '0000-00-00 00:00:00'),
(1275120, 102, 'Bulandshahr', 28.400000, 77.849998, '0000-00-00 00:00:00'),
(1256532, 102, 'Shikarpur', 28.283333, 78.016670, '0000-00-00 00:00:00'),
(1272653, 102, 'Dibai', 28.216667, 78.250000, '0000-00-00 00:00:00'),
(1261837, 102, 'Naraura', 28.200001, 78.383331, '0000-00-00 00:00:00'),
(1257800, 102, 'Sahaswan', 28.083332, 78.750000, '0000-00-00 00:00:00'),
(1253918, 102, 'Ujhani', 28.016666, 79.016670, '0000-00-00 00:00:00'),
(1268540, 102, 'Kakrala', 27.900000, 79.199997, '0000-00-00 00:00:00'),
(1253673, 102, 'Usehat', 27.816668, 79.250000, '0000-00-00 00:00:00'),
(1269447, 102, 'Jalalabad', 27.716667, 79.666664, '0000-00-00 00:00:00'),
(1278990, 102, 'Allahganj', 27.549999, 79.683334, '0000-00-00 00:00:00'),
(1270370, 102, 'Hardoi', 27.416668, 80.116669, '0000-00-00 00:00:00'),
(1257459, 102, 'Sandila', 27.083332, 80.516670, '0000-00-00 00:00:00'),
(1264085, 102, 'Malihabad', 26.916668, 80.716667, '0000-00-00 00:00:00'),
(1268545, 102, 'Kakori', 26.883333, 80.800003, '0000-00-00 00:00:00'),
(1264733, 102, 'Lucknow', 26.850000, 80.916664, '0000-00-00 00:00:00'),
(1270890, 102, 'Goshainganj', 26.766666, 81.116669, '0000-00-00 00:00:00'),
(1257005, 102, 'Satrikh', 26.866667, 81.199997, '0000-00-00 00:00:00'),
(1252698, 102, 'Zaidpur', 26.833332, 81.333336, '0000-00-00 00:00:00'),
(1254536, 102, 'Tikaitnagar', 26.950001, 81.583336, '0000-00-00 00:00:00'),
(1283621, 164, 'Bhairahawa', 27.500000, 83.449997, '0000-00-00 00:00:00'),
(1283613, 164, 'Bharatpur', 27.683332, 84.433334, '0000-00-00 00:00:00'),
(1283190, 164, 'Kirtipur', 27.666668, 85.283333, '0000-00-00 00:00:00'),
(1282931, 164, 'Patan', 27.666668, 85.333336, '0000-00-00 00:00:00'),
(692672, 224, 'Stavyshche', 50.400002, 29.533333, '0000-00-00 00:00:00'),
(711390, 224, 'Brovary', 50.500000, 30.766666, '0000-00-00 00:00:00'),
(694558, 224, 'Semypolky', 50.716667, 30.933332, '0000-00-00 00:00:00'),
(578953, 186, 'Barvikha', 55.740002, 37.270000, '0000-00-00 00:00:00'),
(509998, 186, 'Petrovo-Dalneye', 55.746113, 37.181110, '0000-00-00 00:00:00'),
(521821, 186, 'Nikolina Gora', 55.734444, 37.041389, '0000-00-00 00:00:00'),
(461920, 186, 'Zvenigorod', 55.733334, 36.847500, '0000-00-00 00:00:00'),
(480685, 186, 'Tuchkovo', 55.601112, 36.468056, '0000-00-00 00:00:00'),
(541286, 186, 'Kratovo', 55.586945, 38.204723, '0000-00-00 00:00:00'),
(545405, 186, 'Konobeyevo', 55.406387, 38.662498, '0000-00-00 00:00:00'),
(471656, 186, 'Voskresensk', 55.312500, 38.663612, '0000-00-00 00:00:00'),
(502345, 186, 'Rechitsy', 55.597778, 38.463890, '0000-00-00 00:00:00'),
(525396, 186, 'Monino', 55.838055, 38.194443, '0000-00-00 00:00:00'),
(516305, 186, 'Obukhovo', 55.832779, 38.272499, '0000-00-00 00:00:00'),
(556463, 186, 'Imeni Vorovskogo', 55.723331, 38.341389, '0000-00-00 00:00:00'),
(563523, 186, 'Elektrostal', 55.791943, 38.442223, '0000-00-00 00:00:00'),
(512023, 186, 'Pavlovskiy Posad', 55.784721, 38.650555, '0000-00-00 00:00:00'),
(565007, 186, 'Drezna', 55.745834, 38.849724, '0000-00-00 00:00:00'),
(515186, 186, 'Opalikha', 55.827499, 37.255001, '0000-00-00 00:00:00'),
(518346, 186, 'Novopetrovskoye', 55.992779, 36.471943, '0000-00-00 00:00:00'),
(475845, 186, 'Verbilki', 56.533333, 37.599998, '0000-00-00 00:00:00'),
(580616, 186, 'Ashitkovo', 55.439999, 38.590000, '0000-00-00 00:00:00'),
(495515, 186, 'Shaturtorf', 55.567223, 39.416943, '0000-00-00 00:00:00'),
(573922, 186, 'Bolshiye Vyazemy', 55.633331, 36.983334, '0000-00-00 00:00:00'),
(463465, 186, 'Zhavoronki', 55.649723, 37.104168, '0000-00-00 00:00:00'),
(527888, 186, 'Medvezhyegorsk', 62.916668, 34.466667, '0000-00-00 00:00:00'),
(6730265, 186, 'Obolensk', 54.977409, 37.224483, '0000-00-00 00:00:00'),
(496527, 186, 'Serpukhov', 54.921391, 37.410831, '0000-00-00 00:00:00'),
(503581, 186, 'Pyaozerskiy', 65.833336, 31.166668, '0000-00-00 00:00:00'),
(533964, 186, 'Loukhi', 66.076385, 33.038055, '0000-00-00 00:00:00'),
(545673, 186, 'Konakovo', 56.700001, 36.766666, '0000-00-00 00:00:00'),
(461704, 186, 'Novozavidovskiy', 56.549999, 36.433334, '0000-00-00 00:00:00'),
(543106, 186, 'Kozlovo', 56.516666, 36.266666, '0000-00-00 00:00:00'),
(1264773, 102, 'Loni', 28.750000, 77.283333, '0000-00-00 00:00:00'),
(294166, 100, 'Mitzpe Ramon', 30.609444, 34.801109, '0000-00-00 00:00:00'),
(1258972, 102, 'Raipur', 26.049999, 74.016670, '0000-00-00 00:00:00'),
(691606, 224, 'Terny', 50.983334, 33.983334, '0000-00-00 00:00:00'),
(565284, 186, 'Donskoye', 52.775833, 41.488335, '0000-00-00 00:00:00'),
(688455, 224, 'Yaremche', 48.458332, 24.551945, '0000-00-00 00:00:00'),
(1506394, 186, 'Plotnikovo', 55.024723, 85.943611, '0000-00-00 00:00:00'),
(518337, 186, 'Novopodrezkovo', 55.942780, 37.346668, '0000-00-00 00:00:00'),
(492448, 186, 'Skhodnya', 55.955833, 37.297222, '0000-00-00 00:00:00'),
(463829, 186, 'Zelenograd', 55.982498, 37.181389, '0000-00-00 00:00:00'),
(583491, 186, 'Alabushevo', 56.009998, 37.150002, '0000-00-00 00:00:00'),
(510225, 186, 'Petrodvorets', 59.884998, 29.895832, '0000-00-00 00:00:00'),
(487227, 186, 'Strelna', 59.848331, 30.026112, '0000-00-00 00:00:00'),
(621729, 34, 'Horad Smalyavichy', 54.033333, 28.084167, '0000-00-00 00:00:00'),
(618800, 34, 'Horad Zhodzina', 54.098331, 28.332500, '0000-00-00 00:00:00'),
(1283011, 164, 'Namche Bazar', 27.816668, 86.716667, '0000-00-00 00:00:00'),
(1253986, 102, 'Udaipur', 24.571167, 73.691826, '0000-00-00 00:00:00'),
(1260716, 102, 'Pali', 25.766666, 73.333336, '0000-00-00 00:00:00'),
(1268865, 102, 'Jodhpur', 26.286667, 73.029999, '0000-00-00 00:00:00'),
(1269507, 102, 'Jaisalmer', 26.914684, 70.918076, '0000-00-00 00:00:00'),
(1259148, 102, 'Pushkar', 26.500000, 74.550003, '0000-00-00 00:00:00'),
(1279159, 102, 'Ajmer', 26.450001, 74.633331, '0000-00-00 00:00:00'),
(1267995, 102, 'Kanpur', 26.466667, 80.349998, '0000-00-00 00:00:00'),
(1271439, 102, 'Gaya', 24.783333, 85.000000, '0000-00-00 00:00:00'),
(1275389, 102, 'Bodh Gaya', 24.700001, 84.983330, '0000-00-00 00:00:00'),
(479123, 186, 'Ulyanovsk', 54.333332, 48.400002, '0000-00-00 00:00:00'),
(6417535, 186, 'Mosrentgen', 55.618332, 37.471111, '0000-00-00 00:00:00'),
(500843, 186, 'Rublevo', 55.785557, 37.355831, '0000-00-00 00:00:00'),
(469341, 186, 'Yam', 55.484444, 37.749168, '0000-00-00 00:00:00'),
(486968, 186, 'Stupino', 54.900833, 38.070831, '0000-00-00 00:00:00'),
(524423, 186, 'Muranovo', 56.183334, 37.900002, '0000-00-00 00:00:00'),
(490996, 186, 'Solnechnogorsk', 56.183334, 36.983334, '0000-00-00 00:00:00'),
(507599, 186, 'Pokrov', 55.919998, 39.176945, '0000-00-00 00:00:00'),
(495344, 186, 'Shchelkovo', 55.921665, 37.991390, '0000-00-00 00:00:00'),
(562319, 186, 'Fryazino', 55.960556, 38.045555, '0000-00-00 00:00:00'),
(491351, 186, 'Sofrino', 56.150002, 37.966667, '0000-00-00 00:00:00'),
(565381, 186, 'Domodedovo', 55.442223, 37.758331, '0000-00-00 00:00:00'),
(469533, 186, 'Yakovlevskoye', 55.441944, 37.950558, '0000-00-00 00:00:00'),
(568808, 186, 'Chernogolovka', 56.000000, 38.366669, '0000-00-00 00:00:00'),
(562322, 186, 'Fryanovo', 56.133331, 38.450001, '0000-00-00 00:00:00'),
(523553, 186, 'Nakhabino', 55.851391, 37.181389, '0000-00-00 00:00:00'),
(495619, 186, 'Sharya', 58.368610, 45.514442, '0000-00-00 00:00:00'),
(529505, 186, 'Manturovo', 58.335278, 44.761944, '0000-00-00 00:00:00'),
(532138, 186, 'Makaryev', 57.879723, 43.806946, '0000-00-00 00:00:00'),
(543494, 186, 'Kovernino', 57.125278, 43.814167, '0000-00-00 00:00:00'),
(559678, 186, 'Gorodets', 56.651390, 43.474998, '0000-00-00 00:00:00'),
(464101, 186, 'Zavolzhye', 56.642776, 43.393612, '0000-00-00 00:00:00'),
(510323, 186, 'Pestyaki', 56.710278, 42.671665, '0000-00-00 00:00:00'),
(559459, 186, 'Gorokhovets', 56.194721, 42.700279, '0000-00-00 00:00:00'),
(524294, 186, 'Murom', 55.565556, 42.041668, '0000-00-00 00:00:00'),
(468030, 186, 'Yelatma', 54.967499, 41.750832, '0000-00-00 00:00:00'),
(551891, 186, 'Kasimov', 54.941113, 41.395279, '0000-00-00 00:00:00'),
(554836, 186, 'Izhevskoye', 54.556667, 40.870277, '0000-00-00 00:00:00'),
(489741, 186, 'Spassk-Ryazanskiy', 54.407223, 40.380554, '0000-00-00 00:00:00'),
(524298, 186, 'Murmino', 54.603611, 40.054443, '0000-00-00 00:00:00'),
(500096, 186, 'Ryazan', 54.619720, 39.740002, '0000-00-00 00:00:00'),
(499975, 186, 'Rybnoye', 54.725555, 39.511944, '0000-00-00 00:00:00'),
(464687, 186, 'Zaraysk', 54.765278, 38.883610, '0000-00-00 00:00:00'),
(513362, 186, 'Ozherelye', 54.796112, 38.267223, '0000-00-00 00:00:00'),
(562321, 186, 'Fryazevo', 55.731945, 38.462776, '0000-00-00 00:00:00'),
(461916, 186, 'Zvenigovo', 55.974167, 48.018055, '0000-00-00 00:00:00'),
(543018, 186, 'Kozmodemyansk', 56.336666, 46.571110, '0000-00-00 00:00:00'),
(572665, 186, 'Bor', 56.356667, 44.066944, '0000-00-00 00:00:00'),
(520555, 186, 'Nizhniy Novgorod', 56.328674, 44.002048, '0000-00-00 00:00:00'),
(522871, 186, 'Neklyudovo', 56.411388, 43.981388, '0000-00-00 00:00:00'),
(513095, 186, 'Palekh', 56.802776, 41.857224, '0000-00-00 00:00:00'),
(466084, 186, 'Yuzha', 56.583057, 42.012222, '0000-00-00 00:00:00'),
(553389, 186, 'Kameshkovo', 56.348057, 41.004723, '0000-00-00 00:00:00'),
(548781, 186, 'Kideksha', 56.416668, 40.516666, '0000-00-00 00:00:00'),
(485824, 186, 'Suzdal', 56.428055, 40.441387, '0000-00-00 00:00:00'),
(561783, 186, 'Gavrilov Posad', 56.559723, 40.117500, '0000-00-00 00:00:00'),
(466215, 186, 'Yuryev-Polskiy', 56.500000, 39.683334, '0000-00-00 00:00:00'),
(578641, 186, 'Bavleny', 56.400002, 39.560001, '0000-00-00 00:00:00'),
(546521, 186, 'Kolchugino', 56.299999, 39.383331, '0000-00-00 00:00:00'),
(491687, 186, 'Smolensk', 54.781666, 32.040001, '0000-00-00 00:00:00'),
(628758, 34, 'Dubrowna', 54.573334, 30.690556, '0000-00-00 00:00:00'),
(624079, 34, 'Orsha', 54.515278, 30.405277, '0000-00-00 00:00:00'),
(630431, 34, 'Baran', 54.476391, 30.318056, '0000-00-00 00:00:00'),
(622034, 34, 'Shklow', 54.210835, 30.291945, '0000-00-00 00:00:00'),
(625665, 34, 'Mahilyow', 53.913891, 30.336390, '0000-00-00 00:00:00'),
(629471, 34, 'Buynichy', 53.850555, 30.263889, '0000-00-00 00:00:00'),
(627272, 34, 'Kirawsk', 53.268612, 29.473612, '0000-00-00 00:00:00'),
(630468, 34, 'Babruysk', 53.150002, 29.233334, '0000-00-00 00:00:00'),
(624034, 34, 'Asipovichy', 53.293331, 28.642221, '0000-00-00 00:00:00'),
(626956, 34, 'Kapyl', 53.153057, 27.096666, '0000-00-00 00:00:00'),
(624700, 34, 'Nyasvizh', 53.218056, 26.672501, '0000-00-00 00:00:00'),
(628182, 34, 'Haradzyeya', 53.316666, 26.533333, '0000-00-00 00:00:00'),
(625128, 34, 'Mir', 53.450001, 26.466667, '0000-00-00 00:00:00'),
(626939, 34, 'Karelichy', 53.565277, 26.137777, '0000-00-00 00:00:00'),
(624785, 34, 'Navahrudak', 53.599998, 25.833332, '0000-00-00 00:00:00'),
(621754, 34, 'Slonim', 53.086666, 25.321943, '0000-00-00 00:00:00'),
(622997, 34, 'Pruzhany', 52.556667, 24.464443, '0000-00-00 00:00:00'),
(629634, 34, 'Brest', 52.099998, 23.700001, '0000-00-00 00:00:00'),
(545791, 186, 'Kommunar', 56.116669, 40.433334, '0000-00-00 00:00:00'),
(575609, 186, 'Bogolyubovo', 56.195557, 40.529720, '0000-00-00 00:00:00'),
(543878, 186, 'Kostroma', 57.770832, 40.934444, '0000-00-00 00:00:00'),
(486015, 186, 'Susanino', 58.146111, 41.587223, '0000-00-00 00:00:00'),
(555312, 186, 'Ivanovo', 56.994167, 40.985832, '0000-00-00 00:00:00'),
(562309, 186, 'Furmanov', 57.250832, 41.105831, '0000-00-00 00:00:00'),
(505060, 186, 'Privolzhsk', 57.380833, 41.288612, '0000-00-00 00:00:00'),
(509029, 186, 'Ples', 57.458618, 41.515789, '0000-00-00 00:00:00'),
(542024, 186, 'Krasnoye-na-Volge', 57.512501, 41.241943, '0000-00-00 00:00:00'),
(543704, 186, 'Kotlas', 61.261112, 46.655556, '0000-00-00 00:00:00'),
(505112, 186, 'Privodino', 61.078056, 46.504444, '0000-00-00 00:00:00'),
(542908, 186, 'Krasavino', 60.961388, 46.481388, '0000-00-00 00:00:00'),
(476062, 186, 'Velikiy Ustyug', 60.764442, 46.310555, '0000-00-00 00:00:00'),
(516539, 186, 'Nyuksenitsa', 60.412777, 44.239723, '0000-00-00 00:00:00'),
(481960, 186, 'Totma', 59.974724, 42.764168, '0000-00-00 00:00:00'),
(491025, 186, 'Soligalich', 59.077778, 42.286388, '0000-00-00 00:00:00'),
(567695, 186, 'Chukhloma', 58.752499, 42.682499, '0000-00-00 00:00:00'),
(562161, 186, 'Galich', 58.379723, 42.347500, '0000-00-00 00:00:00'),
(563522, 186, 'Elektrougli', 55.717220, 38.207779, '0000-00-00 00:00:00'),
(489264, 186, 'Staraya', 59.928055, 30.620556, '0000-00-00 00:00:00'),
(709112, 224, 'Foros', 44.400002, 33.783333, '0000-00-00 00:00:00'),
(700997, 224, 'Miskhor', 44.433334, 34.083332, '0000-00-00 00:00:00'),
(712930, 224, 'Balaklava', 44.500000, 33.599998, '0000-00-00 00:00:00'),
(688533, 224, 'Yalta', 44.500000, 34.166668, '0000-00-00 00:00:00'),
(701619, 224, 'Massandra', 44.516666, 34.183334, '0000-00-00 00:00:00'),
(711527, 224, 'Nikita', 44.533333, 34.233334, '0000-00-00 00:00:00'),
(712576, 224, 'Inkerman', 44.599998, 33.599998, '0000-00-00 00:00:00'),
(694423, 224, 'Sevastopol', 44.599998, 33.533333, '0000-00-00 00:00:00'),
(713513, 224, 'Alushta', 44.666668, 34.416668, '0000-00-00 00:00:00'),
(697653, 224, 'Perevalnoe', 44.833332, 34.333332, '0000-00-00 00:00:00'),
(692315, 224, 'Sudak', 44.849998, 34.966667, '0000-00-00 00:00:00'),
(697124, 224, 'Koktebel', 44.950001, 35.250000, '0000-00-00 00:00:00'),
(709161, 224, 'Feodosiya', 45.033333, 35.383331, '0000-00-00 00:00:00'),
(694910, 224, 'Saky', 45.135555, 33.603058, '0000-00-00 00:00:00'),
(690556, 224, 'Uyutne', 45.199444, 33.301388, '0000-00-00 00:00:00'),
(688105, 224, 'Yevpatoriya', 45.197224, 33.355831, '0000-00-00 00:00:00'),
(706524, 224, 'Kerch', 45.358334, 36.475834, '0000-00-00 00:00:00'),
(700550, 224, 'Mysove', 45.450001, 35.849998, '0000-00-00 00:00:00'),
(710687, 224, 'Chornomorske', 45.503887, 32.699722, '0000-00-00 00:00:00'),
(491422, 186, 'Sochi', 43.599998, 39.730278, '0000-00-00 00:00:00'),
(542681, 186, 'Krasnaya Polyana', 43.675835, 40.207222, '0000-00-00 00:00:00'),
(536625, 186, 'Lazarevskoye', 43.906113, 39.333057, '0000-00-00 00:00:00'),
(523048, 186, 'Nebug', 44.171391, 39.003613, '0000-00-00 00:00:00'),
(553514, 186, 'Kamennomostskiy', 44.298332, 40.185555, '0000-00-00 00:00:00'),
(566157, 186, 'Divnomorskoye', 44.501110, 38.135277, '0000-00-00 00:00:00'),
(561667, 186, 'Gelendzhik', 44.573055, 38.074722, '0000-00-00 00:00:00'),
(559317, 186, 'Goryachiy Klyuch', 44.630833, 39.130001, '0000-00-00 00:00:00'),
(584365, 186, 'Abrau-Dyurso', 44.689999, 37.590000, '0000-00-00 00:00:00'),
(582181, 186, 'Anapskaya', 44.889999, 37.380001, '0000-00-00 00:00:00'),
(473295, 186, 'Vityazevo', 44.993057, 37.271942, '0000-00-00 00:00:00'),
(473546, 186, 'Vinogradnyy', 45.051666, 37.318890, '0000-00-00 00:00:00'),
(483661, 186, 'Temryuk', 45.272221, 37.381111, '0000-00-00 00:00:00'),
(560513, 186, 'Golubitskaya', 45.322224, 37.282223, '0000-00-00 00:00:00'),
(583811, 186, 'Akhtanizovskaya', 45.320000, 37.099998, '0000-00-00 00:00:00'),
(488713, 186, 'Staronizhestebliyevskaya', 45.376667, 38.451668, '0000-00-00 00:00:00'),
(611847, 77, 'Sokhumi', 43.003334, 41.015278, '0000-00-00 00:00:00'),
(615912, 77, 'Stantsiya Novyy Afon', 43.080555, 40.838333, '0000-00-00 00:00:00'),
(615460, 77, 'Bichvinta', 43.159168, 40.337776, '0000-00-00 00:00:00'),
(614622, 77, 'Gagra', 43.328335, 40.223888, '0000-00-00 00:00:00'),
(512039, 186, 'Pavlovskaya Sloboda', 55.815556, 37.082779, '0000-00-00 00:00:00'),
(2014571, 186, 'Uglovoye', 43.328888, 132.091660, '0000-00-00 00:00:00'),
(2021956, 186, 'Knevichi', 43.399166, 132.180283, '0000-00-00 00:00:00'),
(584243, 186, 'Adler', 43.430000, 39.919998, '0000-00-00 00:00:00'),
(803494, 186, 'Orel-Izumrud', 43.458332, 39.924442, '0000-00-00 00:00:00'),
(803498, 186, 'Vysokoye', 43.460556, 39.965832, '0000-00-00 00:00:00'),
(549424, 186, 'Khosta', 43.514721, 39.868889, '0000-00-00 00:00:00'),
(823674, 186, 'Dagomys', 43.670277, 39.668888, '0000-00-00 00:00:00'),
(477047, 186, 'Vardane', 43.731667, 39.551388, '0000-00-00 00:00:00'),
(552562, 186, 'Kardonikskaya', 43.861668, 41.719444, '0000-00-00 00:00:00'),
(498462, 186, 'Sary-Tyuz', 43.901390, 41.899723, '0000-00-00 00:00:00'),
(505539, 186, 'Pregradnaya', 43.950832, 41.199444, '0000-00-00 00:00:00'),
(559320, 186, 'Goryachevodskiy', 44.023609, 43.092220, '0000-00-00 00:00:00'),
(494846, 186, 'Shepsi', 44.036110, 39.148888, '0000-00-00 00:00:00'),
(503550, 186, 'Pyatigorsk', 44.048611, 43.059444, '0000-00-00 00:00:00'),
(480716, 186, 'Tuapse', 44.112499, 39.074165, '0000-00-00 00:00:00'),
(526480, 186, 'Mineralnyye Vody', 44.210278, 43.135277, '0000-00-00 00:00:00'),
(581788, 186, 'Andzhiyevskiy', 44.230000, 43.080002, '0000-00-00 00:00:00'),
(485871, 186, 'Suvorovskaya', 44.194168, 42.653889, '0000-00-00 00:00:00'),
(535440, 186, 'Levokumka', 44.231667, 43.150002, '0000-00-00 00:00:00'),
(518585, 186, 'Novomikhaylovskiy', 44.258057, 38.857777, '0000-00-00 00:00:00'),
(563601, 186, 'Dzhubga', 44.321110, 38.703888, '0000-00-00 00:00:00'),
(580969, 186, 'Arkhipo-Osipovka', 44.369999, 38.520000, '0000-00-00 00:00:00'),
(490747, 186, 'Soluno-Dmitriyevskoye', 44.403057, 42.727779, '0000-00-00 00:00:00'),
(708953, 224, 'Gaspra', 44.433334, 34.099998, '0000-00-00 00:00:00'),
(550846, 186, 'Khadyzhensk', 44.425556, 39.531944, '0000-00-00 00:00:00'),
(581313, 186, 'Apsheronsk', 44.459999, 39.730000, '0000-00-00 00:00:00'),
(504376, 186, 'Pshada', 44.468887, 38.398056, '0000-00-00 00:00:00'),
(709075, 224, 'Partenit', 44.577995, 34.344635, '0000-00-00 00:00:00'),
(522377, 186, 'Nevinnomyssk', 44.626667, 41.945278, '0000-00-00 00:00:00'),
(554668, 186, 'Kabardinka', 44.651390, 37.942780, '0000-00-00 00:00:00'),
(537281, 186, 'Labinsk', 44.634167, 40.735558, '0000-00-00 00:00:00'),
(498672, 186, 'Saratovskaya', 44.710278, 39.224445, '0000-00-00 00:00:00'),
(518255, 186, 'Novorossiysk', 44.723888, 37.770832, '0000-00-00 00:00:00'),
(577893, 186, 'Belorechensk', 44.759998, 39.869999, '0000-00-00 00:00:00'),
(502542, 186, 'Rayevskaya', 44.831944, 37.555557, '0000-00-00 00:00:00'),
(496385, 186, 'Severnoye', 44.831944, 42.858334, '0000-00-00 00:00:00'),
(483142, 186, 'Adygeysk', 44.880001, 39.189999, '0000-00-00 00:00:00'),
(517769, 186, 'Novoukrainskiy', 44.896942, 38.052223, '0000-00-00 00:00:00'),
(482582, 186, 'Tlyustenkhabl', 44.980000, 39.097221, '0000-00-00 00:00:00'),
(512382, 186, 'Pashkovskiy', 45.023056, 39.106110, '0000-00-00 00:00:00'),
(692714, 224, 'Staryy Krym', 45.033333, 35.099998, '0000-00-00 00:00:00'),
(487846, 186, 'Stavropol', 45.042778, 41.973331, '0000-00-00 00:00:00'),
(542420, 186, 'Krasnodar', 45.032780, 38.976944, '0000-00-00 00:00:00'),
(712587, 224, 'Bilohirsk', 45.049999, 34.599998, '0000-00-00 00:00:00'),
(712427, 224, 'Berehove', 45.099998, 35.433334, '0000-00-00 00:00:00'),
(488606, 186, 'Starotitarovskaya', 45.213612, 37.143890, '0000-00-00 00:00:00'),
(517842, 186, 'Novotitarovskaya', 45.235558, 38.979168, '0000-00-00 00:00:00'),
(550452, 186, 'Khatukay', 45.188889, 39.666389, '0000-00-00 00:00:00'),
(492094, 186, 'Slavyansk-na-Kubani', 45.251945, 38.118057, '0000-00-00 00:00:00'),
(478044, 186, 'Ust-Labinsk', 45.212502, 39.686390, '0000-00-00 00:00:00'),
(481275, 186, 'Trudobelikovskiy', 45.268612, 38.163055, '0000-00-00 00:00:00'),
(509124, 186, 'Plastunovskaya', 45.293888, 39.266945, '0000-00-00 00:00:00'),
(537235, 186, 'Ladozhskaya', 45.308056, 39.935001, '0000-00-00 00:00:00'),
(540761, 186, 'Kropotkin', 45.437500, 40.575558, '0000-00-00 00:00:00'),
(527968, 186, 'Medvedovskaya', 45.453056, 39.025833, '0000-00-00 00:00:00'),
(554173, 186, 'Kalininskaya', 45.482224, 38.662777, '0000-00-00 00:00:00'),
(551669, 186, 'Kavkazskaya', 45.445000, 40.672779, '0000-00-00 00:00:00'),
(544896, 186, 'Korenovsk', 45.468613, 39.451942, '0000-00-00 00:00:00'),
(470338, 186, 'Vyselki', 45.579445, 39.659721, '0000-00-00 00:00:00'),
(482965, 186, 'Timashevsk', 45.616943, 38.945278, '0000-00-00 00:00:00'),
(709334, 224, 'Dzhankoy', 45.716667, 34.400002, '0000-00-00 00:00:00'),
(542334, 186, 'Krasnogvardeyskoye', 45.845554, 41.518612, '0000-00-00 00:00:00'),
(556170, 186, 'Irkliyevskaya', 45.853889, 39.656113, '0000-00-00 00:00:00'),
(512533, 186, 'Parkovyy', 45.833057, 40.145557, '0000-00-00 00:00:00'),
(518249, 186, 'Novorozhdestvenskaya', 45.861942, 39.954166, '0000-00-00 00:00:00'),
(483029, 186, 'Tikhoretsk', 45.854721, 40.125278, '0000-00-00 00:00:00'),
(483326, 186, 'Ternevskaya', 45.854168, 40.408611, '0000-00-00 00:00:00'),
(518325, 186, 'Novopokrovskaya', 45.951389, 40.700558, '0000-00-00 00:00:00'),
(540055, 186, 'Kubanskiy', 45.929169, 40.580555, '0000-00-00 00:00:00'),
(704362, 224, 'Krasnoperekopsk', 45.955002, 33.792221, '0000-00-00 00:00:00'),
(488758, 186, 'Staroleushkovskaya', 45.990555, 39.763058, '0000-00-00 00:00:00'),
(578169, 186, 'Belaya Glina', 46.070000, 40.860001, '0000-00-00 00:00:00'),
(512051, 186, 'Pavlovskaya', 46.132778, 39.785557, '0000-00-00 00:00:00'),
(712160, 224, 'Bilhorod-Dnistrovskyy', 46.200001, 30.350000, '0000-00-00 00:00:00'),
(510613, 186, 'Peschanokopskoye', 46.196110, 41.077499, '0000-00-00 00:00:00'),
(699706, 224, 'Novooleksiyivka', 46.226944, 34.642776, '0000-00-00 00:00:00'),
(697957, 224, 'Partyzany', 46.331390, 34.750278, '0000-00-00 00:00:00'),
(698740, 224, 'Odessa', 46.477474, 30.732622, '0000-00-00 00:00:00'),
(2020689, 186, 'Luchegorsk', 46.476391, 134.256943, '0000-00-00 00:00:00'),
(499161, 186, 'Salsk', 46.472500, 41.542778, '0000-00-00 00:00:00'),
(488742, 186, 'Starominskaya', 46.529999, 39.049721, '0000-00-00 00:00:00'),
(708632, 224, 'Hola Prystan', 46.520557, 32.525833, '0000-00-00 00:00:00'),
(538416, 186, 'Kushchevskaya', 46.556389, 39.638611, '0000-00-00 00:00:00'),
(553159, 186, 'Kanelovskaya', 46.590832, 39.189999, '0000-00-00 00:00:00'),
(565456, 186, 'Dolzhanskaya', 46.631111, 37.803890, '0000-00-00 00:00:00'),
(713743, 224, 'Yakymivka', 46.689720, 35.153610, '0000-00-00 00:00:00'),
(504831, 186, 'Proletarsk', 46.703056, 41.719166, '0000-00-00 00:00:00'),
(466885, 186, 'Yeysk', 46.698891, 38.279167, '0000-00-00 00:00:00'),
(712451, 224, 'Berdyansk', 46.750278, 36.794445, '0000-00-00 00:00:00'),
(701404, 224, 'Melitopol', 46.842220, 35.373055, '0000-00-00 00:00:00'),
(514796, 186, 'Orlovskiy', 46.871387, 42.059166, '0000-00-00 00:00:00'),
(499055, 186, 'Samarskoye', 46.933613, 39.681389, '0000-00-00 00:00:00'),
(699657, 224, 'Novobohdanivka', 47.081944, 35.327221, '0000-00-00 00:00:00'),
(462522, 186, 'Zimovniki', 47.148335, 42.463333, '0000-00-00 00:00:00'),
(583673, 186, 'Aksay', 47.259998, 39.869999, '0000-00-00 00:00:00'),
(501175, 186, 'Rostov-na-Donu', 47.236389, 39.713890, '0000-00-00 00:00:00'),
(691469, 224, 'Tokmak', 47.251389, 35.705833, '0000-00-00 00:00:00'),
(505256, 186, 'Primorka', 47.283611, 39.062500, '0000-00-00 00:00:00'),
(579771, 186, 'Bagayevskaya', 47.320000, 40.380001, '0000-00-00 00:00:00'),
(564593, 186, 'Dubovskoye', 47.409168, 42.757500, '0000-00-00 00:00:00'),
(558384, 186, 'Grushevskaya', 47.440556, 39.951111, '0000-00-00 00:00:00'),
(686729, 224, 'Vasylivka', 47.436943, 35.274166, '0000-00-00 00:00:00'),
(2013229, 186, 'Vyazemskiy', 47.537777, 134.752502, '0000-00-00 00:00:00'),
(543728, 186, 'Kotelnikovo', 47.631668, 43.146111, '0000-00-00 00:00:00'),
(707898, 224, 'Hulyaypole', 47.665279, 36.257778, '0000-00-00 00:00:00'),
(528242, 186, 'Mayskiy', 47.693054, 40.102501, '0000-00-00 00:00:00'),
(703555, 224, 'Kushuhum', 47.714443, 35.209167, '0000-00-00 00:00:00'),
(580139, 186, 'Ayutinskiy', 47.770000, 40.139999, '0000-00-00 00:00:00'),
(499535, 186, 'Sadovoye', 47.776390, 44.508888, '0000-00-00 00:00:00'),
(703845, 224, 'Kryvyy Rih', 47.916668, 33.349998, '0000-00-00 00:00:00'),
(546579, 186, 'Koksovyy', 48.196667, 40.598888, '0000-00-00 00:00:00'),
(578155, 186, 'Belaya Kalitva', 48.169998, 40.779999, '0000-00-00 00:00:00'),
(525162, 186, 'Morozovsk', 48.353889, 41.826111, '0000-00-00 00:00:00'),
(489062, 186, 'Staraya Stanitsa', 48.349998, 40.283333, '0000-00-00 00:00:00'),
(464130, 186, 'Masalovka', 48.405277, 40.270557, '0000-00-00 00:00:00'),
(706244, 224, 'Khotyn', 48.483334, 26.500000, '0000-00-00 00:00:00'),
(561146, 186, 'Glubokiy', 48.521667, 40.325832, '0000-00-00 00:00:00'),
(705392, 224, 'Kolomyya', 48.530556, 25.040277, '0000-00-00 00:00:00'),
(701091, 224, 'Mynay', 48.583332, 22.283333, '0000-00-00 00:00:00'),
(552999, 186, 'Kapustin Yar', 48.583057, 45.737221, '0000-00-00 00:00:00'),
(701405, 224, 'Meliorativnoye', 48.599998, 35.366669, '0000-00-00 00:00:00'),
(699445, 224, 'Novomoskovsk', 48.616669, 35.200001, '0000-00-00 00:00:00'),
(2016412, 186, 'Smidovich', 48.599998, 133.816666, '0000-00-00 00:00:00'),
(690548, 224, 'Uzhhorod', 48.616669, 22.299999, '0000-00-00 00:00:00'),
(486071, 186, 'Surovikino', 48.607777, 42.848610, '0000-00-00 00:00:00'),
(687826, 224, 'Zalishchyky', 48.644722, 25.733889, '0000-00-00 00:00:00'),
(542213, 186, 'Krasnoslobodsk', 48.707222, 44.571388, '0000-00-00 00:00:00'),
(489446, 186, 'Srednyaya Akhtuba', 48.708889, 44.866669, '0000-00-00 00:00:00'),
(706950, 224, 'Kamieniec Podolski', 48.666668, 26.566668, '0000-00-00 00:00:00'),
(536156, 186, 'Leninsk', 48.711945, 45.199444, '0000-00-00 00:00:00'),
(484396, 186, 'Tarasovskiy', 48.729168, 40.363609, '0000-00-00 00:00:00'),
(2026643, 186, 'Birobidzhan', 48.799999, 132.949997, '0000-00-00 00:00:00'),
(1275339, 102, 'Mumbai', 19.014410, 72.847939, '0000-00-00 00:00:00'),
(689304, 224, 'Vovchansk', 50.300278, 36.946667, '0000-00-00 00:00:00'),
(487928, 186, 'Staryy Oskol', 51.296665, 37.841667, '0000-00-00 00:00:00'),
(472045, 186, 'Voronezh', 51.666389, 39.169998, '0000-00-00 00:00:00'),
(483541, 186, 'Terbuny', 52.138889, 38.278889, '0000-00-00 00:00:00'),
(575343, 186, 'Bolokhovo', 54.093613, 37.818333, '0000-00-00 00:00:00'),
(484287, 186, 'Tarusa', 54.723331, 37.176666, '0000-00-00 00:00:00'),
(540771, 186, 'Kronshtadt', 59.993610, 29.773611, '0000-00-00 00:00:00'),
(535544, 186, 'Levashovo', 60.102222, 30.213057, '0000-00-00 00:00:00'),
(1252797, 102, 'Yamunanagar', 30.100000, 77.283333, '0000-00-00 00:00:00'),
(533543, 186, 'Lukhovitsy', 54.972778, 39.036110, '0000-00-00 00:00:00'),
(506782, 186, 'Polyany', 54.712223, 39.823055, '0000-00-00 00:00:00'),
(490846, 186, 'Solotcha', 54.791668, 39.844166, '0000-00-00 00:00:00'),
(514042, 186, 'Ostrovtsy', 55.593887, 37.993610, '0000-00-00 00:00:00'),
(482260, 186, 'Tomilino', 55.655277, 37.925278, '0000-00-00 00:00:00'),
(532615, 186, 'Lyubertsy', 55.677776, 37.883331, '0000-00-00 00:00:00'),
(515698, 186, 'Olenegorsk', 68.150002, 33.299999, '0000-00-00 00:00:00'),
(533933, 186, 'Lovozero', 68.004997, 35.011665, '0000-00-00 00:00:00'),
(2609894, 186, 'Yantarnyy', 54.871666, 19.938057, '0000-00-00 00:00:00'),
(2023469, 186, 'Irkutsk', 52.297779, 104.296387, '0000-00-00 00:00:00'),
(1283018, 164, 'Nagarkot', 27.700001, 85.516670, '0000-00-00 00:00:00'),
(1175712, 173, 'Jiwani', 25.049999, 61.741669, '0000-00-00 00:00:00'),
(556283, 186, 'Inza', 53.853333, 46.358612, '0000-00-00 00:00:00'),
(473994, 186, 'Veshkayma', 54.049999, 47.133331, '0000-00-00 00:00:00'),
(526354, 186, 'Mirnyy', 54.366669, 48.750000, '0000-00-00 00:00:00'),
(566199, 186, 'Dimitrovgrad', 54.213860, 49.618378, '0000-00-00 00:00:00'),
(479561, 186, 'Ufa', 54.775002, 56.037498, '0000-00-00 00:00:00'),
(479198, 186, 'Ulu-Telyak', 54.908611, 56.966946, '0000-00-00 00:00:00'),
(478071, 186, 'Ust-Katav', 54.936943, 58.165558, '0000-00-00 00:00:00'),
(1495022, 186, 'Petukhovo', 55.069168, 67.901947, '0000-00-00 00:00:00'),
(1520172, 121, 'Petropavlovsk', 54.875278, 69.162781, '0000-00-00 00:00:00'),
(1522203, 121, 'Kokshetau', 53.277500, 69.388336, '0000-00-00 00:00:00'),
(1519244, 121, 'Shchuchinsk', 52.933334, 70.199997, '0000-00-00 00:00:00'),
(1520844, 121, 'Moyynty', 47.221111, 73.366943, '0000-00-00 00:00:00'),
(1519563, 121, 'Saryshaghan', 46.119167, 73.619164, '0000-00-00 00:00:00'),
(1519030, 121, 'Shu', 43.598331, 73.761391, '0000-00-00 00:00:00'),
(1524958, 121, 'Burunday', 43.360279, 76.857780, '0000-00-00 00:00:00'),
(1526384, 121, 'Almaty', 43.250000, 76.949997, '0000-00-00 00:00:00'),
(525719, 186, 'Mokrous', 51.233334, 47.516666, '0000-00-00 00:00:00'),
(504000, 186, 'Pushkino', 51.233334, 46.983334, '0000-00-00 00:00:00'),
(505057, 186, 'Privolzhskiy', 51.400002, 46.033333, '0000-00-00 00:00:00'),
(527034, 186, 'Mikhaylov', 54.229168, 39.018612, '0000-00-00 00:00:00'),
(1267154, 102, 'Khajuraho', 24.850000, 79.933334, '0000-00-00 00:00:00'),
(1274369, 102, 'Chhala', 23.299999, 72.766670, '0000-00-00 00:00:00'),
(1279233, 102, 'Ahmadabad', 23.033333, 72.616669, '0000-00-00 00:00:00'),
(1255175, 102, 'Talaja', 21.350000, 72.050003, '0000-00-00 00:00:00'),
(1273287, 102, 'Delvada', 20.766666, 71.033333, '0000-00-00 00:00:00'),
(1272502, 102, 'Diu', 20.714052, 70.982239, '0000-00-00 00:00:00'),
(498677, 186, 'Saratov', 51.566666, 46.033333, '0000-00-00 00:00:00'),
(477301, 186, 'Valday', 57.974724, 33.252499, '0000-00-00 00:00:00'),
(518970, 186, 'Novocherkassk', 47.418056, 40.093887, '0000-00-00 00:00:00'),
(290030, 182, 'Doha', 25.286667, 51.533333, '0000-00-00 00:00:00'),
(569077, 186, 'Chernaya', 55.746113, 38.068890, '0000-00-00 00:00:00'),
(6697077, 186, 'Kievskij', 55.436417, 36.898270, '0000-00-00 00:00:00'),
(468902, 186, 'Yaroslavl', 57.629871, 39.873676, '0000-00-00 00:00:00'),
(456172, 131, 'Riga', 56.950001, 24.100000, '0000-00-00 00:00:00'),
(712374, 224, 'Berezhani', 49.450001, 24.933332, '0000-00-00 00:00:00'),
(515012, 186, 'Orel', 52.965832, 36.080276, '0000-00-00 00:00:00'),
(554318, 186, 'Kalevala', 65.199997, 31.166668, '0000-00-00 00:00:00'),
(563524, 186, 'Elektrogorsk', 55.879444, 38.791943, '0000-00-00 00:00:00'),
(696743, 224, 'Pokotylivka', 49.915279, 36.177219, '0000-00-00 00:00:00'),
(702417, 224, 'Lyubotyn', 49.950001, 35.966671, '0000-00-00 00:00:00'),
(706483, 224, 'Kharkiv', 50.000000, 36.250000, '0000-00-00 00:00:00'),
(465291, 186, 'Zalegoshch', 52.900829, 36.886940, '0000-00-00 00:00:00'),
(474324, 186, 'Verkhovye', 52.811939, 37.242500, '0000-00-00 00:00:00'),
(497610, 186, 'Seltso', 53.367500, 34.099998, '0000-00-00 00:00:00'),
(571476, 186, 'Bryansk', 53.287498, 34.380562, '0000-00-00 00:00:00'),
(464993, 186, 'Zaokskiy', 54.730560, 37.408890, '0000-00-00 00:00:00'),
(501978, 186, 'Revyakino', 54.366940, 37.658890, '0000-00-00 00:00:00'),
(560154, 186, 'Gorelki', 54.274719, 37.618328, '0000-00-00 00:00:00'),
(480562, 186, 'Tula', 54.204441, 37.611111, '0000-00-00 00:00:00'),
(462377, 186, 'Zmiyevka', 52.669720, 36.373890, '0000-00-00 00:00:00'),
(561313, 186, 'Glazunovka', 52.498611, 36.327499, '0000-00-00 00:00:00'),
(462169, 186, 'Zolotukhino', 52.084171, 36.377220, '0000-00-00 00:00:00'),
(538560, 186, 'Kursk', 51.730282, 36.193890, '0000-00-00 00:00:00'),
(578072, 186, 'Belgorod', 50.610001, 36.580002, '0000-00-00 00:00:00'),
(693598, 224, 'Slatino', 50.224171, 36.160831, '0000-00-00 00:00:00'),
(688696, 224, 'Vysokyy', 49.890560, 36.119999, '0000-00-00 00:00:00'),
(697135, 224, 'Pivdenne', 49.881390, 36.070000, '0000-00-00 00:00:00'),
(701347, 224, 'Merefa', 49.819721, 36.051941, '0000-00-00 00:00:00'),
(704363, 224, 'Krasnopavlivka', 49.137218, 36.327221, '0000-00-00 00:00:00'),
(698003, 224, 'Panyutyne', 48.933331, 36.283329, '0000-00-00 00:00:00'),
(687700, 224, 'Zaporizhzhya', 47.816669, 35.183331, '0000-00-00 00:00:00'),
(702072, 224, 'Malokaterynivka', 47.652500, 35.253891, '0000-00-00 00:00:00'),
(696262, 224, 'Pryshyb', 47.260281, 35.322781, '0000-00-00 00:00:00'),
(533008, 186, 'Lvovskiy', 55.314171, 37.515831, '0000-00-00 00:00:00'),
(697889, 224, 'Pavlohrad', 48.516670, 35.866669, '0000-00-00 00:00:00'),
(628175, 34, 'Haradzishcha', 53.316669, 26.000000, '0000-00-00 00:00:00'),
(561679, 186, 'Gdov', 58.740559, 27.812220, '0000-00-00 00:00:00'),
(510347, 186, 'Pestravka', 52.404999, 49.958328, '0000-00-00 00:00:00'),
(145964, 53, 'Yeri', 35.099998, 33.416672, '0000-00-00 00:00:00'),
(2411585, 81, 'Gibraltar', 36.144741, -5.352570, '0000-00-00 00:00:00'),
(1861454, 110, 'Isawa', 35.650002, 138.633331, '0000-00-00 00:00:00'),
(1852915, 110, 'Sasaguri', 33.616669, 130.533325, '0000-00-00 00:00:00'),
(2112571, 110, 'Ishioka', 36.183331, 140.266663, '0000-00-00 00:00:00'),
(1849796, 110, 'Tsu-shi', 34.730282, 136.508606, '0000-00-00 00:00:00'),
(2111277, 110, 'Rifu', 38.323608, 140.974442, '0000-00-00 00:00:00'),
(1864750, 110, 'Beppu', 33.273609, 131.491943, '0000-00-00 00:00:00'),
(2014927, 186, 'Tulun', 54.561111, 100.579170, '0000-00-00 00:00:00'),
(2021093, 186, 'Kuytun', 54.341942, 101.503609, '0000-00-00 00:00:00'),
(2012702, 186, 'Zalari', 53.558399, 102.506500, '0000-00-00 00:00:00'),
(2021116, 186, 'Kutulik', 53.350830, 102.783890, '0000-00-00 00:00:00'),
(2014022, 186, 'Usolye-Sibirskoye', 52.751942, 103.645279, '0000-00-00 00:00:00'),
(2027667, 186, 'Angarsk', 52.536671, 103.886391, '0000-00-00 00:00:00'),
(2016764, 186, 'Shelekhov', 52.213890, 104.099998, '0000-00-00 00:00:00'),
(2021343, 186, 'Kultuk', 51.720829, 103.695557, '0000-00-00 00:00:00'),
(2016422, 186, 'Slyudyanka', 51.659439, 103.706108, '0000-00-00 00:00:00'),
(2026979, 186, 'Baykalsk', 51.505829, 104.146942, '0000-00-00 00:00:00'),
(2013225, 186, 'Rechka-Vydrino', 51.485001, 104.846107, '0000-00-00 00:00:00'),
(2027276, 186, 'Babushkin', 51.712219, 105.864723, '0000-00-00 00:00:00'),
(2014779, 186, 'Turuntayevo', 52.200001, 107.616669, '0000-00-00 00:00:00'),
(2013986, 186, 'Ust-Barguzin', 53.450001, 108.983330, '0000-00-00 00:00:00'),
(2027109, 186, 'Barguzin', 53.616669, 109.616669, '0000-00-00 00:00:00'),
(2021188, 186, 'Kurumkan', 54.299999, 110.300003, '0000-00-00 00:00:00'),
(577901, 186, 'Beloozerskiy', 55.459782, 38.443581, '0000-00-00 00:00:00'),
(548652, 186, 'Kimry', 56.866669, 37.349998, '0000-00-00 00:00:00'),
(3553478, 49, 'Havana', 23.133020, -82.383041, '0000-00-00 00:00:00'),
(523523, 186, 'Nalchik', 43.498058, 43.618889, '0000-00-00 00:00:00'),
(1517060, 121, 'Zaysan', 47.466671, 84.866669, '0000-00-00 00:00:00'),
(2016334, 186, 'Sokol', 51.800362, 107.444366, '0000-00-00 00:00:00'),
(577384, 186, 'Bereza', 53.518330, 50.139671, '0000-00-00 00:00:00'),
(1496153, 186, 'Omsk', 55.000000, 73.400002, '0000-00-00 00:00:00'),
(536206, 186, 'Yubileyny', 55.933331, 37.833328, '0000-00-00 00:00:00'),
(1495797, 186, 'Ovsyanka', 55.957500, 92.551941, '0000-00-00 00:00:00'),
(2019309, 186, 'Neryungri', 56.670898, 124.649101, '0000-00-00 00:00:00'),
(512566, 186, 'Pargolovo', 60.086910, 30.271790, '0000-00-00 00:00:00'),
(2013727, 186, 'Vanavara', 60.340000, 102.279716, '0000-00-00 00:00:00'),
(535806, 186, 'Leskolovo', 60.263409, 30.454620, '0000-00-00 00:00:00'),
(1497543, 186, 'Nizhnevartovsk', 60.934399, 76.553101, '0000-00-00 00:00:00'),
(1503772, 186, 'Khanty-Mansiysk', 61.004169, 69.001938, '0000-00-00 00:00:00'),
(2020221, 186, 'Markha', 62.105282, 129.726944, '0000-00-00 00:00:00'),
(1540356, 186, 'Raduzhnyy', 62.096111, 77.474998, '0000-00-00 00:00:00'),
(2019951, 186, 'Mirnyy', 62.535278, 113.961113, '0000-00-00 00:00:00'),
(479411, 186, 'Ukhta', 63.567051, 53.683479, '0000-00-00 00:00:00'),
(1498087, 186, 'Nadym', 65.533333, 72.516670, '0000-00-00 00:00:00'),
(1496511, 186, 'Novyy Urengoy', 66.083328, 76.633331, '0000-00-00 00:00:00'),
(2014624, 186, 'Udachnyy', 66.416672, 112.400002, '0000-00-00 00:00:00'),
(1493197, 186, 'Salekhard', 66.529999, 66.601936, '0000-00-00 00:00:00'),
(1486910, 186, 'Vorkuta', 67.500000, 64.000000, '0000-00-00 00:00:00'),
(2126123, 186, 'Chokurdakh', 70.633331, 147.916672, '0000-00-00 00:00:00'),
(2015306, 186, 'Tiksi', 71.687218, 128.869446, '0000-00-00 00:00:00'),
(2022572, 186, 'Khatanga', 71.966667, 102.500000, '0000-00-00 00:00:00'),
(2181133, 166, 'Timaru', -44.400002, 171.250000, '0000-00-00 00:00:00'),
(3839982, 9, 'Punta Alta', -38.875881, -62.073589, '0000-00-00 00:00:00'),
(3430443, 9, 'Necochea', -38.547260, -58.736752, '0000-00-00 00:00:00'),
(6241325, 166, 'Rotorua', -38.138741, 176.245163, '0000-00-00 00:00:00'),
(2158020, 12, 'Merimbula', -36.900002, 149.899994, '0000-00-00 00:00:00'),
(2163055, 12, 'Horsham', -36.716671, 142.199997, '0000-00-00 00:00:00'),
(2176401, 12, 'Bega', -36.666672, 149.833328, '0000-00-00 00:00:00'),
(3895088, 44, 'Chillan', -36.606640, -72.103439, '0000-00-00 00:00:00'),
(2149645, 12, 'Shepparton', -36.383331, 145.399994, '0000-00-00 00:00:00'),
(3435038, 9, 'Dolores', -36.313221, -57.679180, '0000-00-00 00:00:00'),
(2162994, 12, 'Howlong', -35.966671, 146.633331, '0000-00-00 00:00:00'),
(2147756, 12, 'Swan Hill', -35.337811, 143.554398, '0000-00-00 00:00:00'),
(2160774, 12, 'Lake Albert', -35.166672, 147.383331, '0000-00-00 00:00:00'),
(2078025, 12, 'Adelaide', -34.933331, 138.600006, '0000-00-00 00:00:00'),
(7289886, 12, 'Fullarton', -34.951000, 138.628998, '0000-00-00 00:00:00'),
(2057897, 12, 'Woodville', -34.883331, 138.550003, '0000-00-00 00:00:00'),
(6943474, 12, 'Athelstone', -34.869789, 138.702881, '0000-00-00 00:00:00'),
(3441575, 227, 'Montevideo', -34.833462, -56.167351, '0000-00-00 00:00:00'),
(2162733, 12, 'Ingleburn', -34.000000, 150.866669, '0000-00-00 00:00:00'),
(3361025, 241, 'Stellenbosch', -33.934620, 18.866760, '0000-00-00 00:00:00'),
(2171586, 12, 'Chipping Norton', -33.900002, 150.949997, '0000-00-00 00:00:00'),
(2208305, 12, 'Dee Why', -33.750000, 151.300003, '0000-00-00 00:00:00'),
(2154219, 12, 'Orange', -33.283970, 149.100174, '0000-00-00 00:00:00'),
(3441684, 227, 'Mercedes', -33.252399, -58.030472, '0000-00-00 00:00:00'),
(2153778, 12, 'Parkes', -33.133331, 148.183334, '0000-00-00 00:00:00'),
(3883214, 44, 'Limache', -33.016670, -71.266670, '0000-00-00 00:00:00'),
(2168305, 12, 'Dubbo', -32.250000, 148.616669, '0000-00-00 00:00:00'),
(1020641, 241, 'Beaufort West', -32.356709, 22.582951, '0000-00-00 00:00:00'),
(1000543, 241, 'Graaff-Reinet', -32.252151, 24.530750, '0000-00-00 00:00:00'),
(2165159, 12, 'Gloucester', -32.000000, 151.966675, '0000-00-00 00:00:00'),
(2173911, 12, 'Broken Hill', -31.950001, 141.433334, '0000-00-00 00:00:00'),
(2169736, 12, 'Cundletown', -31.900000, 152.533325, '0000-00-00 00:00:00'),
(2171216, 12, 'Cobar', -31.500000, 145.816666, '0000-00-00 00:00:00'),
(3440714, 227, 'Salto', -31.383329, -57.966671, '0000-00-00 00:00:00'),
(2164206, 12, 'Gunnedah', -30.983330, 150.250000, '0000-00-00 00:00:00'),
(2177671, 12, 'Armidale', -30.516670, 151.649994, '0000-00-00 00:00:00'),
(2155742, 12, 'Narrabri', -30.316669, 149.783325, '0000-00-00 00:00:00'),
(2171085, 12, 'Coffs Harbour', -30.299999, 153.133331, '0000-00-00 00:00:00'),
(3861824, 9, 'Chamical', -30.360020, -66.313988, '0000-00-00 00:00:00'),
(2162662, 12, 'Inverell', -29.783331, 151.116669, '0000-00-00 00:00:00'),
(2156927, 12, 'Moree', -29.466669, 149.850006, '0000-00-00 00:00:00'),
(995202, 241, 'Howick', -29.477949, 30.230570, '0000-00-00 00:00:00'),
(2167050, 12, 'Evans Head', -29.116671, 153.433334, '0000-00-00 00:00:00'),
(2172153, 12, 'Casino', -28.866671, 153.050003, '0000-00-00 00:00:00'),
(2160063, 12, 'Lismore', -28.813540, 153.277298, '0000-00-00 00:00:00'),
(940909, 241, 'Welkom', -27.986441, 26.706610, '0000-00-00 00:00:00'),
(6943556, 12, 'Taigum', -27.342649, 153.044434, '0000-00-00 00:00:00'),
(2173605, 12, 'Buderim', -26.683331, 153.050003, '0000-00-00 00:00:00'),
(1017780, 241, 'Boksburg', -26.211969, 28.259581, '0000-00-00 00:00:00'),
(3458147, 30, 'Mafra', -26.111389, -49.805279, '0000-00-00 00:00:00'),
(982899, 241, 'Lichtenburg', -26.152000, 26.159679, '0000-00-00 00:00:00'),
(980921, 241, 'Mabopane', -25.497681, 28.100651, '0000-00-00 00:00:00'),
(3453535, 30, 'Piraquara', -25.441669, -49.063332, '0000-00-00 00:00:00'),
(933726, 33, 'Hukuntsi', -24.000000, 21.750000, '0000-00-00 00:00:00'),
(2077895, 12, 'Alice Springs', -23.700001, 133.883331, '0000-00-00 00:00:00'),
(3471393, 30, 'Aruja', -23.396111, -46.320831, '0000-00-00 00:00:00'),
(6354929, 12, 'Tom Price', -22.693899, 117.793098, '0000-00-00 00:00:00'),
(7262440, 226, 'Valencia West', 32.132381, -111.114143, '0000-00-00 00:00:00'),
(5495380, 226, 'Tularosa', 33.073971, -106.018600, '0000-00-00 00:00:00'),
(6051123, 36, 'Leamington', 42.054901, -82.606201, '0000-00-00 00:00:00'),
(5920450, 36, 'Chatham-Kent', 42.400089, -82.183098, '0000-00-00 00:00:00'),
(6165719, 36, 'Thorold', 43.116821, -79.199577, '0000-00-00 00:00:00'),
(6176823, 36, 'Waterloo', 43.466801, -80.516388, '0000-00-00 00:00:00'),
(5991370, 36, 'Keswick', 44.250111, -79.466316, '0000-00-00 00:00:00'),
(6150174, 36, 'Smiths Falls', 44.900108, -76.016068, '0000-00-00 00:00:00'),
(5978683, 36, 'Huntingdon', 45.083389, -74.165932, '0000-00-00 00:00:00'),
(6138495, 36, 'Saint-Jean-sur-Richelieu', 45.316780, -73.265862, '0000-00-00 00:00:00'),
(6122037, 36, 'Richelieu', 45.443359, -73.246017, '0000-00-00 00:00:00'),
(5923101, 36, 'Clarence-Rockland', 45.550098, -75.291008, '0000-00-00 00:00:00'),
(6138374, 36, 'Saint-Hyacinthe', 45.616779, -72.949142, '0000-00-00 00:00:00'),
(6137702, 36, 'Sainte-Agathe-des-Monts', 46.050091, -74.282516, '0000-00-00 00:00:00'),
(6076211, 36, 'Moncton', 46.115940, -64.801857, '0000-00-00 00:00:00'),
(6137631, 36, 'Saint-Come--Liniere', 46.066769, -70.515732, '0000-00-00 00:00:00'),
(6945991, 36, 'Plessisville', 46.218559, -71.762009, '0000-00-00 00:00:00'),
(5897209, 36, 'Becancour', 46.333359, -72.432411, '0000-00-00 00:00:00'),
(6945989, 36, 'Sainte-Marie', 46.434010, -71.011681, '0000-00-00 00:00:00'),
(7535681, 36, 'Saint-Augustin-de-Desmaures', 46.740639, -71.451309, '0000-00-00 00:00:00'),
(7535692, 36, 'La Pocatiere', 47.348358, -70.061859, '0000-00-00 00:00:00'),
(7302644, 36, 'Tracadie-Sheila', 47.514439, -64.918060, '0000-00-00 00:00:00'),
(6137270, 36, 'Saguenay', 48.416752, -71.065727, '0000-00-00 00:00:00'),
(6354895, 36, 'Rimouski', 48.448792, -68.523956, '0000-00-00 00:00:00'),
(6166142, 36, 'Thunder Bay', 48.400101, -89.316833, '0000-00-00 00:00:00'),
(6122085, 36, 'Richmond', 49.170029, -123.136833, '0000-00-00 00:00:00'),
(6085772, 36, 'Nanaimo', 49.166340, -123.936012, '0000-00-00 00:00:00'),
(6173331, 36, 'Vancouver', 49.249660, -123.119339, '0000-00-00 00:00:00'),
(6111632, 36, 'Port Alberni', 49.241329, -124.802803, '0000-00-00 00:00:00'),
(6078447, 36, 'Morden', 49.191898, -98.101357, '0000-00-00 00:00:00');
INSERT INTO `OPENWEATHER_CITY` (`CITY_ID`, `COUNTRY_ID`, `CITY_NAME`, `CITY_LAT`, `CITY_LNG`, `LM_DATE`) VALUES
(5911606, 36, 'Burnaby', 49.266361, -122.952629, '0000-00-00 00:00:00'),
(6098642, 36, 'Parksville', 49.316330, -124.319450, '0000-00-00 00:00:00'),
(7281936, 36, 'West Kelowna', 49.862499, -119.583328, '0000-00-00 00:00:00'),
(6111529, 36, 'Portage la Prairie', 49.972820, -98.292633, '0000-00-00 00:00:00'),
(6144054, 36, 'Selkirk', 50.143600, -96.884521, '0000-00-00 00:00:00'),
(5887048, 36, 'Armstrong', 50.449791, -119.202347, '0000-00-00 00:00:00'),
(5933070, 36, 'Crossfield', 51.433411, -114.035278, '0000-00-00 00:00:00'),
(5946820, 36, 'Edson', 53.583450, -116.435593, '0000-00-00 00:00:00'),
(5946768, 36, 'Edmonton', 53.550140, -113.468712, '0000-00-00 00:00:00'),
(964420, 241, 'Port Elizabeth', -33.917992, 25.570070, '0000-00-00 00:00:00'),
(3453639, 30, 'Pirassununga', -21.996111, -47.425831, '0000-00-00 00:00:00'),
(933186, 33, 'Orapa', -21.283331, 25.366671, '0000-00-00 00:00:00'),
(2065594, 12, 'Mount Isa', -20.733330, 139.500000, '0000-00-00 00:00:00'),
(3353715, 156, 'Outjo', -20.116671, 16.150000, '0000-00-00 00:00:00'),
(2060436, 12, 'Tennant Creek', -19.650000, 134.199997, '0000-00-00 00:00:00'),
(3352593, 156, 'Tsumeb', -19.233330, 17.716669, '0000-00-00 00:00:00'),
(882100, 243, 'Rusape', -18.527849, 32.128429, '0000-00-00 00:00:00'),
(3934707, 169, 'Mollendo', -17.023060, -72.014717, '0000-00-00 00:00:00'),
(2064735, 12, 'Nhulunbuy', -12.233330, 136.766663, '0000-00-00 00:00:00'),
(158876, 223, 'Itumba', -9.400000, 33.183331, '0000-00-00 00:00:00'),
(155334, 223, 'Magole', -6.366670, 37.366669, '0000-00-00 00:00:00'),
(3573650, 220, 'Tabaquite', 10.383330, -61.299999, '0000-00-00 00:00:00'),
(3645213, 231, 'Coro', 11.404500, -69.673439, '0000-00-00 00:00:00'),
(1259434, 102, 'Polur', 12.500000, 79.133331, '0000-00-00 00:00:00'),
(1268189, 102, 'Kanakapura', 12.550000, 77.416672, '0000-00-00 00:00:00'),
(1609350, 213, 'Bangkok', 13.750000, 100.516670, '0000-00-00 00:00:00'),
(3600328, 94, 'Villa Nueva', 14.033330, -87.133331, '0000-00-00 00:00:00'),
(1608057, 213, 'Pak Chong', 14.708020, 101.416138, '0000-00-00 00:00:00'),
(2455290, 141, 'Kidal', 18.441111, 1.407780, '0000-00-00 00:00:00'),
(2446796, 158, 'Bilma', 18.685320, 12.916430, '0000-00-00 00:00:00'),
(3495694, 59, 'Otra Banda', 18.650160, -68.662811, '0000-00-00 00:00:00'),
(3515302, 153, 'Toluca', 19.288330, -99.667221, '0000-00-00 00:00:00'),
(3530139, 153, 'Coyoacan', 19.328890, -99.160278, '0000-00-00 00:00:00'),
(1257896, 102, 'Sadabad', 27.450001, 78.050003, '0000-00-00 00:00:00'),
(6354970, 66, 'Puerto Rico', 27.789431, -15.710450, '0000-00-00 00:00:00'),
(2521692, 66, 'Arafo', 28.339710, -16.422440, '0000-00-00 00:00:00'),
(1860112, 110, 'Kanoya', 31.383329, 130.850006, '0000-00-00 00:00:00'),
(1790100, 46, 'Xiaolingwei', 32.033329, 118.849998, '0000-00-00 00:00:00'),
(2467783, 217, 'Remada', 32.316620, 10.395510, '0000-00-00 00:00:00'),
(2263491, 179, 'Santana', 32.799999, -16.883329, '0000-00-00 00:00:00'),
(1864572, 110, 'Chikushino-shi', 33.496311, 130.515594, '0000-00-00 00:00:00'),
(1849299, 110, 'Umi', 33.566669, 130.500000, '0000-00-00 00:00:00'),
(1848087, 110, 'Yukuhashi', 33.728729, 130.983002, '0000-00-00 00:00:00'),
(1168197, 173, 'Peshawar', 34.007999, 71.578491, '0000-00-00 00:00:00'),
(5301442, 226, 'Lake of the Woods', 34.163929, -109.989548, '0000-00-00 00:00:00'),
(1851426, 110, 'Sumoto', 34.349998, 134.899994, '0000-00-00 00:00:00'),
(1857334, 110, 'Mihara', 34.400002, 133.083328, '0000-00-00 00:00:00'),
(4190542, 226, 'Dahlonega', 34.532589, -83.984909, '0000-00-00 00:00:00'),
(1850034, 110, 'Tondabayashi', 34.500000, 135.600006, '0000-00-00 00:00:00'),
(5322400, 226, 'Adelanto', 34.582771, -117.409218, '0000-00-00 00:00:00'),
(1851717, 110, 'Shizuoka-shi', 34.976940, 138.383057, '0000-00-00 00:00:00'),
(1855416, 110, 'Niimi', 34.983330, 133.466675, '0000-00-00 00:00:00'),
(1854902, 110, 'Numazu', 35.099998, 138.866669, '0000-00-00 00:00:00'),
(1856057, 110, 'Nagoya-shi', 35.181469, 136.906403, '0000-00-00 00:00:00'),
(146268, 53, 'Nicosia', 35.166672, 33.366669, '0000-00-00 00:00:00'),
(1861602, 110, 'Inazawa', 35.250000, 136.783325, '0000-00-00 00:00:00'),
(1855380, 110, 'Ninomiya', 35.303329, 139.253326, '0000-00-00 00:00:00'),
(1861449, 110, 'Isehara', 35.390560, 139.307785, '0000-00-00 00:00:00'),
(1861864, 110, 'Iida', 35.519650, 137.820740, '0000-00-00 00:00:00'),
(1859642, 110, 'Kawasaki', 35.520561, 139.717224, '0000-00-00 00:00:00'),
(1862599, 110, 'Hino', 35.673061, 139.400284, '0000-00-00 00:00:00'),
(1855503, 110, 'Nerima', 35.733330, 139.649994, '0000-00-00 00:00:00'),
(1852502, 110, 'Shiki', 35.833328, 139.583328, '0000-00-00 00:00:00'),
(1851604, 110, 'Soka', 35.820278, 139.804443, '0000-00-00 00:00:00'),
(1907125, 110, 'Kamifukuoka', 35.872501, 139.509720, '0000-00-00 00:00:00'),
(2563232, 149, 'Attard', 35.889721, 14.442500, '0000-00-00 00:00:00'),
(2563191, 149, 'Birkirkara', 35.897221, 14.461110, '0000-00-00 00:00:00'),
(6822108, 110, 'Inashiki', 35.956329, 140.323563, '0000-00-00 00:00:00'),
(1854022, 110, 'Ono', 35.981060, 136.487274, '0000-00-00 00:00:00'),
(1852347, 110, 'Shimodate', 36.299999, 139.983337, '0000-00-00 00:00:00'),
(2112232, 110, 'Kitaibaraki', 36.783329, 140.750000, '0000-00-00 00:00:00'),
(2513509, 66, 'Moron de la Frontera', 37.120838, -5.454030, '0000-00-00 00:00:00'),
(2110959, 110, 'Sukagawa', 37.283329, 140.383331, '0000-00-00 00:00:00'),
(2525593, 106, 'Barrafranca', 37.379139, 14.201070, '0000-00-00 00:00:00'),
(2523619, 106, 'Ribera', 37.498440, 13.264150, '0000-00-00 00:00:00'),
(2524179, 106, 'Menfi', 37.606640, 12.967840, '0000-00-00 00:00:00'),
(2523850, 106, 'Pedara', 37.616852, 15.056690, '0000-00-00 00:00:00'),
(2524205, 106, 'Mazara del Vallo', 37.664139, 12.588040, '0000-00-00 00:00:00'),
(251280, 87, 'Zakynthos', 37.791389, 20.895281, '0000-00-00 00:00:00'),
(2521694, 66, 'Aracena', 37.893959, -6.561160, '0000-00-00 00:00:00'),
(260172, 87, 'Khalandrion', 38.030579, 23.797930, '0000-00-00 00:00:00'),
(262135, 87, 'Galatsi', 38.016670, 23.750000, '0000-00-00 00:00:00'),
(257365, 87, 'Megara', 38.000000, 23.345560, '0000-00-00 00:00:00'),
(262752, 87, 'Elefsina', 38.041351, 23.542950, '0000-00-00 00:00:00'),
(257302, 87, 'Melissia', 38.049999, 23.833330, '0000-00-00 00:00:00'),
(2525729, 106, 'Altofonte', 38.042049, 13.296240, '0000-00-00 00:00:00'),
(257811, 87, 'Mandra', 38.066669, 23.500000, '0000-00-00 00:00:00'),
(2524070, 106, 'Montelepre', 38.090450, 13.174340, '0000-00-00 00:00:00'),
(2523630, 106, 'Reggio Calabria', 38.110470, 15.661290, '0000-00-00 00:00:00'),
(2525597, 106, 'Barcellona-Pozzo di Gotto', 38.147560, 15.210480, '0000-00-00 00:00:00'),
(262609, 87, 'Erythres', 38.216671, 23.316669, '0000-00-00 00:00:00'),
(2524170, 106, 'Messina', 38.193272, 15.549690, '0000-00-00 00:00:00'),
(2511102, 66, 'Santa Pola', 38.191650, -0.565800, '0000-00-00 00:00:00'),
(2518559, 66, 'Elche', 38.262180, -0.701070, '0000-00-00 00:00:00'),
(2523738, 106, 'Polistena', 38.405979, 16.080000, '0000-00-00 00:00:00'),
(252190, 87, 'Vasilikon', 38.433331, 23.666670, '0000-00-00 00:00:00'),
(2518505, 66, 'Elda', 38.477829, -0.791570, '0000-00-00 00:00:00'),
(265560, 87, 'Agrinio', 38.621391, 21.407780, '0000-00-00 00:00:00'),
(2512177, 66, 'Puertollano', 38.687119, -4.107340, '0000-00-00 00:00:00'),
(2271140, 179, 'Barcarena', 38.732449, -9.280000, '0000-00-00 00:00:00'),
(4270936, 226, 'Ellis', 38.938068, -99.560669, '0000-00-00 00:00:00'),
(2525473, 106, 'Cagliari', 39.207378, 9.134620, '0000-00-00 00:00:00'),
(2524084, 106, 'Monserrato', 39.256111, 9.139720, '0000-00-00 00:00:00'),
(2519880, 66, 'Casas Ibanez', 39.283329, -1.466670, '0000-00-00 00:00:00'),
(2524844, 106, 'Dolianova', 39.377781, 9.175830, '0000-00-00 00:00:00'),
(5445194, 226, 'Colby', 39.395840, -101.052383, '0000-00-00 00:00:00'),
(2524352, 106, 'Luzzi', 39.446098, 16.288290, '0000-00-00 00:00:00'),
(315985, 219, 'Edremit', 39.596111, 27.024441, '0000-00-00 00:00:00'),
(2111834, 110, 'Morioka-shi', 39.703609, 141.152496, '0000-00-00 00:00:00'),
(258576, 87, 'Larisa', 39.637218, 22.420280, '0000-00-00 00:00:00'),
(3181670, 106, 'Botrugno', 40.064720, 18.324430, '0000-00-00 00:00:00'),
(616417, 7, 'Metsamor', 40.073021, 44.289619, '0000-00-00 00:00:00'),
(3125144, 66, 'Chinchon', 40.140202, -3.422670, '0000-00-00 00:00:00'),
(3116157, 66, 'Morata de Tajuna', 40.226799, -3.432690, '0000-00-00 00:00:00'),
(3165084, 106, 'Tursi', 40.245209, 16.469690, '0000-00-00 00:00:00'),
(735563, 87, 'Kozani', 40.301109, 21.786390, '0000-00-00 00:00:00'),
(3165851, 106, 'Teggiano', 40.379211, 15.540460, '0000-00-00 00:00:00'),
(3118155, 66, 'Loeches', 40.383331, -3.400000, '0000-00-00 00:00:00'),
(3117735, 66, 'Madrid', 40.416500, -3.702560, '0000-00-00 00:00:00'),
(3170350, 106, 'Pomarico', 40.517818, 16.547279, '0000-00-00 00:00:00'),
(736638, 87, 'Agia Trias', 40.499439, 22.876110, '0000-00-00 00:00:00'),
(736083, 87, 'Kalamaria', 40.582500, 22.950279, '0000-00-00 00:00:00'),
(735764, 87, 'Chortiatis', 40.610481, 23.099630, '0000-00-00 00:00:00'),
(734077, 87, 'Thessaloniki', 40.640282, 22.943890, '0000-00-00 00:00:00'),
(3170027, 106, 'Potenza', 40.644321, 15.808570, '0000-00-00 00:00:00'),
(736450, 87, 'Nea Ionia', 40.688889, 22.856939, '0000-00-00 00:00:00'),
(2129211, 110, 'Misawa', 40.683609, 141.359726, '0000-00-00 00:00:00'),
(4902065, 226, 'Metamora', 40.790588, -89.360641, '0000-00-00 00:00:00'),
(734924, 87, 'Nigrita', 40.905281, 23.499439, '0000-00-00 00:00:00'),
(735861, 87, 'Kavala', 40.939720, 24.401939, '0000-00-00 00:00:00'),
(3164219, 106, 'Villa Literno', 41.009911, 14.080520, '0000-00-00 00:00:00'),
(3166056, 106, 'Sturno', 41.020119, 15.110250, '0000-00-00 00:00:00'),
(5106014, 226, 'Wanaque', 41.038151, -74.294037, '0000-00-00 00:00:00'),
(734330, 87, 'Serres', 41.085560, 23.549721, '0000-00-00 00:00:00'),
(735640, 87, 'Komotini', 41.122780, 25.396391, '0000-00-00 00:00:00'),
(733840, 87, 'Xanthi', 41.141392, 24.883610, '0000-00-00 00:00:00'),
(5160041, 226, 'Lagrange', 41.237282, -82.119873, '0000-00-00 00:00:00'),
(3106492, 66, 'Valls', 41.286121, 1.249930, '0000-00-00 00:00:00'),
(6534279, 106, 'Piedimonte Matese', 41.350819, 14.368030, '0000-00-00 00:00:00'),
(3120619, 66, 'LHospitalet de Llobregat', 41.359669, 2.100280, '0000-00-00 00:00:00'),
(3128760, 66, 'Barcelona', 41.388790, 2.158990, '0000-00-00 00:00:00'),
(3110921, 66, 'Sant Adria de Besos', 41.430729, 2.218550, '0000-00-00 00:00:00'),
(3176885, 106, 'Foggia', 41.460930, 15.549250, '0000-00-00 00:00:00'),
(734880, 87, 'Orestiada', 41.503059, 26.529720, '0000-00-00 00:00:00'),
(3122912, 66, 'Esparreguera', 41.533329, 1.866670, '0000-00-00 00:00:00'),
(3108286, 66, 'Terrassa', 41.566669, 2.016670, '0000-00-00 00:00:00'),
(3118514, 66, 'Lleida', 41.616669, 0.616670, '0000-00-00 00:00:00'),
(3108681, 66, 'Soria', 41.764011, -2.468830, '0000-00-00 00:00:00'),
(3128978, 66, 'Balaguer', 41.791168, 0.810940, '0000-00-00 00:00:00'),
(3172074, 106, 'Olevano Romano', 41.860619, 13.033090, '0000-00-00 00:00:00'),
(3110983, 66, 'Salt', 41.974892, 2.792810, '0000-00-00 00:00:00'),
(3114531, 66, 'Palencia', 42.016670, -4.533330, '0000-00-00 00:00:00'),
(3123688, 66, 'Ejea de los Caballeros', 42.126320, -1.137160, '0000-00-00 00:00:00'),
(3176772, 106, 'Forano', 42.301231, 12.589770, '0000-00-00 00:00:00'),
(4905572, 226, 'Pecatonica', 42.313911, -89.359283, '0000-00-00 00:00:00'),
(3126373, 66, 'O Carballino', 42.431629, -8.078990, '0000-00-00 00:00:00'),
(3170590, 106, 'Pizzoli', 42.432140, 13.311690, '0000-00-00 00:00:00'),
(3113236, 66, 'Ponferrada', 42.546638, -6.596190, '0000-00-00 00:00:00'),
(3118532, 66, 'Leon', 42.599998, -5.566670, '0000-00-00 00:00:00'),
(3106313, 66, 'Vega de Espinareda', 42.725368, -6.654390, '0000-00-00 00:00:00'),
(2130452, 110, 'Chitose', 42.819439, 141.652222, '0000-00-00 00:00:00'),
(3127850, 66, 'Bonar', 42.866798, -5.323860, '0000-00-00 00:00:00'),
(3109642, 66, 'Santiago de Compostela', 42.880520, -8.545690, '0000-00-00 00:00:00'),
(3106090, 66, 'Bergara', 43.115101, -2.417500, '0000-00-00 00:00:00'),
(3118228, 66, 'Llodio', 43.143219, -2.962040, '0000-00-00 00:00:00'),
(3165381, 106, 'Torrita di Siena', 43.170238, 11.779440, '0000-00-00 00:00:00'),
(2990919, 73, 'Narbonne', 43.183331, 3.000000, '0000-00-00 00:00:00'),
(3109453, 66, 'Barakaldo', 43.295639, -2.997290, '0000-00-00 00:00:00'),
(3127224, 66, 'Cabezon de la Sal', 43.308239, -4.235710, '0000-00-00 00:00:00'),
(3109041, 66, 'Sestao', 43.309750, -3.007160, '0000-00-00 00:00:00'),
(3028652, 73, 'Carbonne', 43.298569, 1.225200, '0000-00-00 00:00:00'),
(5260694, 226, 'Lodi', 43.313881, -89.526512, '0000-00-00 00:00:00'),
(2995469, 73, 'Marseille', 43.296951, 5.381070, '0000-00-00 00:00:00'),
(4853059, 226, 'Cresco', 43.381359, -92.114052, '0000-00-00 00:00:00'),
(3118304, 66, 'Llanes', 43.419819, -4.754850, '0000-00-00 00:00:00'),
(3108534, 66, 'Suances', 43.433399, -4.043380, '0000-00-00 00:00:00'),
(3038493, 73, 'Aigues-Mortes', 43.566830, 4.190680, '0000-00-00 00:00:00'),
(3170798, 106, 'Pietra la Croce', 43.602242, 13.538870, '0000-00-00 00:00:00'),
(3170321, 106, 'Ponsacco', 43.623840, 10.629110, '0000-00-00 00:00:00'),
(3176959, 106, 'Firenze', 43.766670, 11.250000, '0000-00-00 00:00:00'),
(3183147, 106, 'Altopascio', 43.815739, 10.673910, '0000-00-00 00:00:00'),
(3173008, 106, 'Montecarlo', 43.851250, 10.668310, '0000-00-00 00:00:00'),
(3172828, 106, 'Montemurlo', 43.921650, 11.031120, '0000-00-00 00:00:00'),
(3000329, 73, 'Les Mees', 44.030708, 5.976810, '0000-00-00 00:00:00'),
(3028322, 73, 'Castelsarrasin', 44.033329, 1.100000, '0000-00-00 00:00:00'),
(3167373, 106, 'SantArcangelo di Romagna', 44.063259, 12.446570, '0000-00-00 00:00:00'),
(5763011, 226, 'Box Elder', 44.112492, -103.068230, '0000-00-00 00:00:00'),
(3179523, 106, 'Castelnuovo di Garfagnana', 44.121250, 10.404600, '0000-00-00 00:00:00'),
(3181832, 106, 'Borghetto Santo Spirito', 44.111870, 8.241290, '0000-00-00 00:00:00'),
(3174649, 106, 'Loano', 44.127769, 8.257430, '0000-00-00 00:00:00'),
(3179830, 106, 'Casola Valsenio', 44.225060, 11.625120, '0000-00-00 00:00:00'),
(3166228, 106, 'Spotorno', 44.226379, 8.416470, '0000-00-00 00:00:00'),
(3164988, 106, 'Vado Ligure', 44.269138, 8.433750, '0000-00-00 00:00:00'),
(3169670, 106, 'Quiliano', 44.292542, 8.412650, '0000-00-00 00:00:00'),
(5237056, 226, 'Hinesburg', 44.329220, -73.110680, '0000-00-00 00:00:00'),
(5819881, 226, 'Buffalo', 44.348309, -106.698936, '0000-00-00 00:00:00'),
(673382, 184, 'Mihail Kogalniceanu', 44.366669, 28.450001, '0000-00-00 00:00:00'),
(3182244, 106, 'Beinette', 44.364830, 7.646730, '0000-00-00 00:00:00'),
(5769489, 226, 'Sturgis', 44.409710, -103.509079, '0000-00-00 00:00:00'),
(5821593, 226, 'Cody', 44.526340, -109.056534, '0000-00-00 00:00:00'),
(3176467, 106, 'Fusignano', 44.465069, 11.957130, '0000-00-00 00:00:00'),
(5272776, 226, 'Seymour', 44.514992, -88.330383, '0000-00-00 00:00:00'),
(5027765, 226, 'Gaylord', 44.553020, -94.220528, '0000-00-00 00:00:00'),
(3168239, 106, 'San Giovanni in Persiceto', 44.639969, 11.184110, '0000-00-00 00:00:00'),
(3169522, 106, 'Reggio nellEmilia', 44.698250, 10.631250, '0000-00-00 00:00:00'),
(3177090, 106, 'Ferrara', 44.826778, 11.620710, '0000-00-00 00:00:00'),
(3180496, 106, 'Carmagnola', 44.847038, 7.718030, '0000-00-00 00:00:00'),
(3168350, 106, 'Sangano', 45.026138, 7.448120, '0000-00-00 00:00:00'),
(3176130, 106, 'Giaveno', 45.047039, 7.349220, '0000-00-00 00:00:00'),
(3171058, 106, 'Piacenza', 45.046761, 9.699370, '0000-00-00 00:00:00'),
(3164154, 106, 'Villar Focchiardo', 45.112438, 7.238410, '0000-00-00 00:00:00'),
(4991613, 226, 'East Jordan', 45.158058, -85.124229, '0000-00-00 00:00:00'),
(3174922, 106, 'Legnago', 45.183182, 11.309100, '0000-00-00 00:00:00'),
(6535371, 106, 'San Martino in Strada', 45.274971, 9.526360, '0000-00-00 00:00:00'),
(3174638, 106, 'Lodi', 45.313568, 9.502860, '0000-00-00 00:00:00'),
(5039857, 226, 'Oak Grove', 45.340801, -93.326897, '0000-00-00 00:00:00'),
(3177841, 106, 'Crema', 45.358768, 9.668260, '0000-00-00 00:00:00'),
(3164527, 106, 'Verona', 45.434189, 10.997790, '0000-00-00 00:00:00'),
(3169447, 106, 'Rho', 45.530869, 9.040140, '0000-00-00 00:00:00'),
(3177845, 106, 'Creazzo', 45.531990, 11.478500, '0000-00-00 00:00:00'),
(3177651, 106, 'Dairago', 45.567169, 8.863240, '0000-00-00 00:00:00'),
(3178671, 106, 'Cinisello Balsamo', 45.557072, 9.221850, '0000-00-00 00:00:00'),
(668828, 184, 'Rasnov', 45.583328, 25.450001, '0000-00-00 00:00:00'),
(3025668, 73, 'Chazelles-sur-Lyon', 45.638062, 4.391300, '0000-00-00 00:00:00'),
(683844, 184, 'Brasov', 45.648609, 25.606131, '0000-00-00 00:00:00'),
(3172495, 106, 'Mozzate', 45.672169, 8.955240, '0000-00-00 00:00:00'),
(6534247, 106, 'Verano Brianza', 45.688679, 9.224540, '0000-00-00 00:00:00'),
(6535580, 106, 'Cartigliano', 45.713001, 11.695600, '0000-00-00 00:00:00'),
(6534454, 106, 'Veniano', 45.719379, 8.989740, '0000-00-00 00:00:00'),
(3183316, 106, 'Albino', 45.763779, 9.796360, '0000-00-00 00:00:00'),
(667268, 184, 'Sibiu', 45.799999, 24.150000, '0000-00-00 00:00:00'),
(3172067, 106, 'Olgiate Comasco', 45.785381, 8.967640, '0000-00-00 00:00:00'),
(3174543, 106, 'Lovere', 45.811691, 10.068960, '0000-00-00 00:00:00'),
(3179390, 106, 'Castione della Presolana', 45.914391, 10.063560, '0000-00-00 00:00:00'),
(3199523, 195, 'Grosuplje', 45.955559, 14.658890, '0000-00-00 00:00:00'),
(3181207, 106, 'Caldonazzo', 45.994999, 11.264680, '0000-00-00 00:00:00'),
(2659748, 41, 'Martigny-Ville', 46.102760, 7.072450, '0000-00-00 00:00:00'),
(3195281, 195, 'Medvode', 46.133331, 14.433330, '0000-00-00 00:00:00'),
(686254, 184, 'Arad', 46.183331, 21.316669, '0000-00-00 00:00:00'),
(2972774, 73, 'Thoiry', 46.237621, 5.981110, '0000-00-00 00:00:00'),
(2975410, 73, 'Sciez', 46.329090, 6.379470, '0000-00-00 00:00:00'),
(3203611, 195, 'Bovec', 46.337502, 13.552780, '0000-00-00 00:00:00'),
(3177263, 106, 'Falcade', 46.354210, 11.865920, '0000-00-00 00:00:00'),
(6534732, 106, 'Valdidentro', 46.489010, 10.294050, '0000-00-00 00:00:00'),
(3181913, 106, 'Bolzano', 46.492722, 11.333580, '0000-00-00 00:00:00'),
(674826, 184, 'Letea Veche', 46.549999, 26.950001, '0000-00-00 00:00:00'),
(3044062, 97, 'Tazlar', 46.548241, 19.514360, '0000-00-00 00:00:00'),
(3049885, 97, 'Kiskunfelegyhaza', 46.712132, 19.844580, '0000-00-00 00:00:00'),
(2781023, 11, 'Deutschlandsberg', 46.815281, 15.222220, '0000-00-00 00:00:00'),
(2660177, 41, 'Kehrsatz', 46.910351, 7.470960, '0000-00-00 00:00:00'),
(670889, 184, 'Piatra Neamt', 46.916672, 26.333330, '0000-00-00 00:00:00'),
(2971553, 73, 'Trouy', 47.011532, 2.360180, '0000-00-00 00:00:00'),
(701822, 224, 'Mariupol', 47.066669, 37.500000, '0000-00-00 00:00:00'),
(675810, 184, 'Iasi', 47.166672, 27.600000, '0000-00-00 00:00:00'),
(2770885, 11, 'Nenzing', 47.184361, 9.705390, '0000-00-00 00:00:00'),
(2760610, 11, 'Zeltweg', 47.183331, 14.750000, '0000-00-00 00:00:00'),
(2657915, 41, 'Zofingen', 47.287788, 7.945860, '0000-00-00 00:00:00'),
(2764958, 11, 'Hall in Tirol', 47.283329, 11.516670, '0000-00-00 00:00:00'),
(2981512, 73, 'Saint-Avertin', 47.363571, 0.739930, '0000-00-00 00:00:00'),
(2831088, 55, 'Sonthofen', 47.516670, 10.283330, '0000-00-00 00:00:00'),
(2661604, 41, 'Basel', 47.558399, 7.573270, '0000-00-00 00:00:00'),
(2847639, 55, 'Rheinfelden (Baden)', 47.566669, 7.800000, '0000-00-00 00:00:00'),
(665850, 184, 'Suceava', 47.633331, 26.250000, '0000-00-00 00:00:00'),
(2658432, 41, 'Tagerwilen', 47.655941, 9.131670, '0000-00-00 00:00:00'),
(665382, 184, 'Tautii Magherus', 47.650002, 23.483330, '0000-00-00 00:00:00'),
(2763795, 11, 'Ternitz', 47.715649, 16.035749, '0000-00-00 00:00:00'),
(2873291, 55, 'Marktoberdorf', 47.783329, 10.616670, '0000-00-00 00:00:00'),
(669289, 184, 'Radauti', 47.849998, 25.916670, '0000-00-00 00:00:00'),
(2896530, 55, 'Illmensee', 47.866669, 9.383330, '0000-00-00 00:00:00'),
(2822083, 55, 'Titisee-Neustadt', 47.900002, 8.166670, '0000-00-00 00:00:00'),
(2766692, 11, 'Sankt Georgen im Attergau', 47.935951, 13.483060, '0000-00-00 00:00:00'),
(2779378, 11, 'Frankenmarkt', 47.983330, 13.416670, '0000-00-00 00:00:00'),
(2820752, 55, 'Turkheim', 48.066669, 10.633330, '0000-00-00 00:00:00'),
(2843636, 55, 'Rottweil', 48.167831, 8.627190, '0000-00-00 00:00:00'),
(2867714, 55, 'Muenchen', 48.137428, 11.575490, '0000-00-00 00:00:00'),
(2768348, 11, 'Pressbaum', 48.183331, 16.083330, '0000-00-00 00:00:00'),
(2871601, 55, 'Messstetten', 48.183331, 8.966670, '0000-00-00 00:00:00'),
(2917221, 55, 'Grobenzell', 48.200001, 11.366670, '0000-00-00 00:00:00'),
(2761369, 11, 'Vienna', 48.208488, 16.372080, '0000-00-00 00:00:00'),
(2932924, 55, 'Ehingen', 48.282589, 9.727490, '0000-00-00 00:00:00'),
(3058210, 197, 'Pezinok', 48.289860, 17.266640, '0000-00-00 00:00:00'),
(2781017, 11, 'Deutsch-Wagram', 48.299721, 16.566669, '0000-00-00 00:00:00'),
(2948246, 55, 'Bisingen', 48.310120, 8.917380, '0000-00-00 00:00:00'),
(2865376, 55, 'Neufahrn bei Freising', 48.316669, 11.666670, '0000-00-00 00:00:00'),
(2881885, 55, 'Lahr', 48.349998, 7.866670, '0000-00-00 00:00:00'),
(3019372, 73, 'Etrechy', 48.494652, 2.194890, '0000-00-00 00:00:00'),
(2881857, 55, 'Laichingen', 48.489391, 9.686120, '0000-00-00 00:00:00'),
(2865341, 55, 'Neuffen', 48.554600, 9.375500, '0000-00-00 00:00:00'),
(2899880, 55, 'Holzgerlingen', 48.639690, 9.011490, '0000-00-00 00:00:00'),
(2975525, 73, 'Savigny-sur-Orge', 48.676781, 2.348350, '0000-00-00 00:00:00'),
(2876462, 55, 'Loffenau', 48.772141, 8.384630, '0000-00-00 00:00:00'),
(2854840, 55, 'Perlesreut', 48.783329, 13.450000, '0000-00-00 00:00:00'),
(3206285, 55, 'Urbach', 48.816799, 9.576900, '0000-00-00 00:00:00'),
(2996148, 73, 'Mantes-la-Jolie', 48.983330, 1.716670, '0000-00-00 00:00:00'),
(3078610, 54, 'Brno', 49.195221, 16.607960, '0000-00-00 00:00:00'),
(2909313, 55, 'Hassloch', 49.362782, 8.258060, '0000-00-00 00:00:00'),
(3063196, 54, 'Velke Mezirici', 49.355221, 16.012239, '0000-00-00 00:00:00'),
(2972811, 73, 'Thionville', 49.366669, 6.166670, '0000-00-00 00:00:00'),
(2910935, 55, 'Hangard', 49.382599, 7.210460, '0000-00-00 00:00:00'),
(2839335, 55, 'Schifferstadt', 49.387218, 8.374720, '0000-00-00 00:00:00'),
(2929863, 55, 'Eppelheim', 49.402500, 8.633060, '0000-00-00 00:00:00'),
(2896468, 55, 'Ilvesheim', 49.474041, 8.567400, '0000-00-00 00:00:00'),
(2953402, 55, 'Bad Mergentheim', 49.492500, 9.773610, '0000-00-00 00:00:00'),
(2859772, 55, 'Obermichelbach', 49.531170, 10.908910, '0000-00-00 00:00:00'),
(2925550, 55, 'Frankenthal', 49.537220, 8.355000, '0000-00-00 00:00:00'),
(3068797, 54, 'Ostravice', 49.535099, 18.391640, '0000-00-00 00:00:00'),
(2905457, 55, 'Herzogenaurach', 49.567982, 10.885650, '0000-00-00 00:00:00'),
(763534, 174, 'Nowy Sacz', 49.621769, 20.697050, '0000-00-00 00:00:00'),
(3065379, 54, 'Stara Ves nad Ondrejnici', 49.727749, 18.188499, '0000-00-00 00:00:00'),
(770293, 174, 'Jaslo', 49.745060, 21.472521, '0000-00-00 00:00:00'),
(3064919, 54, 'Stribro', 49.752941, 13.004090, '0000-00-00 00:00:00'),
(2933019, 55, 'Eggolsheim', 49.771111, 11.058060, '0000-00-00 00:00:00'),
(3062811, 54, 'Vitkov', 49.774448, 17.749411, '0000-00-00 00:00:00'),
(2869908, 55, 'Monchberg', 49.791389, 9.265830, '0000-00-00 00:00:00'),
(2913598, 55, 'Guntersblum', 49.797501, 8.345560, '0000-00-00 00:00:00'),
(2937591, 55, 'Dieburg', 49.898891, 8.844440, '0000-00-00 00:00:00'),
(3068927, 54, 'Opava', 49.938660, 17.902571, '0000-00-00 00:00:00'),
(5947708, 36, 'Elkford', 50.050072, -114.885399, '0000-00-00 00:00:00'),
(773380, 174, 'Debica', 50.051460, 21.411409, '0000-00-00 00:00:00'),
(3067696, 54, 'Prague', 50.088039, 14.420760, '0000-00-00 00:00:00'),
(2929134, 55, 'Eschborn', 50.133331, 8.550000, '0000-00-00 00:00:00'),
(3029030, 73, 'Cambrai', 50.166672, 3.233330, '0000-00-00 00:00:00'),
(2858738, 55, 'Oberursel', 50.200001, 8.583330, '0000-00-00 00:00:00'),
(766332, 174, 'Lezajsk', 50.262569, 22.419319, '0000-00-00 00:00:00'),
(3031380, 73, 'Bouchain', 50.285191, 3.314910, '0000-00-00 00:00:00'),
(3030799, 73, 'Boussois', 50.289070, 4.041170, '0000-00-00 00:00:00'),
(3038731, 73, 'Abscon', 50.333328, 3.300000, '0000-00-00 00:00:00'),
(2638698, 75, 'Saint Stephen', 50.333328, -4.900000, '0000-00-00 00:00:00'),
(2906843, 55, 'Hellenthal', 50.483330, 6.433330, '0000-00-00 00:00:00'),
(2939710, 55, 'Crottendorf', 50.516670, 12.950000, '0000-00-00 00:00:00'),
(3037520, 73, 'Annoeullin', 50.529251, 2.931800, '0000-00-00 00:00:00'),
(758252, 174, 'Staszow', 50.563068, 21.165930, '0000-00-00 00:00:00'),
(758445, 174, 'Stalowa Wola', 50.582859, 22.053341, '0000-00-00 00:00:00'),
(3062439, 54, 'Vrchlabi', 50.626968, 15.609370, '0000-00-00 00:00:00'),
(3096576, 174, 'Karpacz', 50.776691, 15.755940, '0000-00-00 00:00:00'),
(769250, 174, 'Kielce', 50.870331, 20.627520, '0000-00-00 00:00:00'),
(2759350, 162, 'Beek', 50.940830, 5.797220, '0000-00-00 00:00:00'),
(757886, 174, 'Suchedniow', 51.047760, 20.829220, '0000-00-00 00:00:00'),
(3020686, 73, 'Dunkerque', 51.049999, 2.366670, '0000-00-00 00:00:00'),
(2647240, 75, 'Headcorn', 51.169659, 0.624330, '0000-00-00 00:00:00'),
(2808559, 55, 'Willich', 51.266670, 6.550000, '0000-00-00 00:00:00'),
(2649322, 75, 'Fleet', 51.283329, -0.833330, '0000-00-00 00:00:00'),
(2633993, 75, 'Whyteleafe', 51.308079, -0.084290, '0000-00-00 00:00:00'),
(3083788, 174, 'Szczercow', 51.333191, 19.109770, '0000-00-00 00:00:00'),
(2917816, 55, 'Grefrath', 51.336300, 6.340720, '0000-00-00 00:00:00'),
(2636716, 75, 'Stratfield Mortimer', 51.373390, -1.034950, '0000-00-00 00:00:00'),
(2655627, 75, 'Birchington-on-Sea', 51.375751, 1.304800, '0000-00-00 00:00:00'),
(760778, 174, 'Radom', 51.402531, 21.147141, '0000-00-00 00:00:00'),
(762199, 174, 'Pionki', 51.476040, 21.449949, '0000-00-00 00:00:00'),
(2635150, 75, 'Upminster', 51.555939, 0.255600, '0000-00-00 00:00:00'),
(6690806, 75, 'Cranham', 51.565651, 0.265900, '0000-00-00 00:00:00'),
(767814, 174, 'Kozienice', 51.582939, 21.547791, '0000-00-00 00:00:00'),
(2639583, 75, 'Rayleigh', 51.585709, 0.604590, '0000-00-00 00:00:00'),
(2653256, 75, 'Chepstow', 51.640869, -2.676830, '0000-00-00 00:00:00'),
(7303225, 75, 'Headwood Bolevad', 51.677078, -0.438250, '0000-00-00 00:00:00'),
(2647108, 75, 'Hengoed', 51.650829, -3.231670, '0000-00-00 00:00:00'),
(6690591, 75, 'Little Chalfont', 51.668289, -0.570380, '0000-00-00 00:00:00'),
(3093133, 174, 'Lodz', 51.750000, 19.466669, '0000-00-00 00:00:00'),
(2849548, 55, 'Rees', 51.766670, 6.400000, '0000-00-00 00:00:00'),
(2827990, 55, 'Steinheim', 51.870659, 9.091360, '0000-00-00 00:00:00'),
(2758326, 162, 'Brielle', 51.901669, 4.162500, '0000-00-00 00:00:00'),
(2751285, 162, 'Maassluis', 51.923328, 4.250000, '0000-00-00 00:00:00'),
(2888047, 55, 'Klein Wanzleben', 52.066669, 11.366670, '0000-00-00 00:00:00'),
(2745912, 162, 'Utrecht', 52.090832, 5.122220, '0000-00-00 00:00:00'),
(2652941, 75, 'Clare', 52.078609, 0.581670, '0000-00-00 00:00:00'),
(6301921, 75, 'Kesgrave', 52.062408, 1.236500, '0000-00-00 00:00:00'),
(2641591, 75, 'Newport Pagnell', 52.087311, -0.722180, '0000-00-00 00:00:00'),
(2961120, 99, 'Tra Mhor', 52.162350, -7.152440, '0000-00-00 00:00:00'),
(2636749, 75, 'Stowmarket', 52.188931, 0.997740, '0000-00-00 00:00:00'),
(2809919, 55, 'Wettringen', 52.209389, 7.318950, '0000-00-00 00:00:00'),
(2753801, 162, 'Hoofddorp', 52.302502, 4.688890, '0000-00-00 00:00:00'),
(770706, 174, 'Jablonna', 52.378849, 20.917450, '0000-00-00 00:00:00'),
(2836746, 55, 'Schoneiche', 52.466671, 13.683330, '0000-00-00 00:00:00'),
(2885657, 55, 'Berlin Koepenick', 52.442539, 13.582280, '0000-00-00 00:00:00'),
(2649568, 75, 'Feltwell', 52.485809, 0.519450, '0000-00-00 00:00:00'),
(2813660, 55, 'Wathlingen', 52.533329, 10.150000, '0000-00-00 00:00:00'),
(2634010, 75, 'Whittlesey', 52.558041, -0.130160, '0000-00-00 00:00:00'),
(2950159, 55, 'Berlin', 52.524368, 13.410530, '0000-00-00 00:00:00'),
(2848756, 55, 'Berlin Reinickendorf', 52.566669, 13.333330, '0000-00-00 00:00:00'),
(2965768, 99, 'Carlow', 52.840832, -6.926110, '0000-00-00 00:00:00'),
(2647242, 75, 'Heacham', 52.907822, 0.493870, '0000-00-00 00:00:00'),
(2634493, 75, 'West Bridgford', 52.929790, -1.125370, '0000-00-00 00:00:00'),
(3101675, 174, 'Chojna', 52.963890, 14.427970, '0000-00-00 00:00:00'),
(2654141, 75, 'Buxton', 53.257408, -1.909820, '0000-00-00 00:00:00'),
(2634375, 75, 'West Kirby', 53.373020, -3.184170, '0000-00-00 00:00:00'),
(2642204, 75, 'Moreton', 53.400002, -3.116670, '0000-00-00 00:00:00'),
(6620310, 75, 'Didsbury', 53.416981, -2.231450, '0000-00-00 00:00:00'),
(6691248, 75, 'Chorlton cum Hardy', 53.435051, -2.263100, '0000-00-00 00:00:00'),
(2648405, 75, 'Glossop', 53.443249, -1.949000, '0000-00-00 00:00:00'),
(3098218, 174, 'Grudziadz', 53.484112, 18.753660, '0000-00-00 00:00:00'),
(2962361, 99, 'An Muileann gCearr', 53.533329, -7.350000, '0000-00-00 00:00:00'),
(2637435, 75, 'South Elmsall', 53.597092, -1.280340, '0000-00-00 00:00:00'),
(3101672, 174, 'Chojnice', 53.695541, 17.557011, '0000-00-00 00:00:00'),
(2952633, 55, 'Bargteheide', 53.733330, 10.266670, '0000-00-00 00:00:00'),
(2965471, 99, 'Claremorris', 53.716671, -9.000000, '0000-00-00 00:00:00'),
(2637958, 75, 'Shipley', 53.833328, -1.766670, '0000-00-00 00:00:00'),
(2655459, 75, 'Blackpool', 53.816669, -3.050000, '0000-00-00 00:00:00'),
(764312, 174, 'Mragowo', 53.864368, 21.305071, '0000-00-00 00:00:00'),
(2867527, 55, 'Munsterdorf', 53.902321, 9.541230, '0000-00-00 00:00:00'),
(2650517, 75, 'Easingwold', 54.119099, -1.192250, '0000-00-00 00:00:00'),
(2894899, 55, 'Jevenstedt', 54.233330, 9.666670, '0000-00-00 00:00:00'),
(5925024, 36, 'Cold Lake', 54.450180, -110.201698, '0000-00-00 00:00:00'),
(2652676, 75, 'Cockermouth', 54.662090, -3.360860, '0000-00-00 00:00:00'),
(6173220, 36, 'Valleyview', 55.066730, -117.285851, '0000-00-00 00:00:00'),
(6050066, 36, 'La Ronge', 55.100128, -105.284218, '0000-00-00 00:00:00'),
(2618415, 57, 'Koge', 55.458019, 12.182140, '0000-00-00 00:00:00'),
(2702979, 192, 'Jonkoping', 57.781448, 14.156180, '0000-00-00 00:00:00'),
(588335, 62, 'Tartu', 58.380619, 26.725090, '0000-00-00 00:00:00'),
(3162955, 163, 'Arendal', 58.461510, 8.772530, '0000-00-00 00:00:00'),
(2717884, 192, 'Degerfors', 59.237968, 14.430770, '0000-00-00 00:00:00'),
(3145375, 163, 'Moss', 59.434029, 10.657710, '0000-00-00 00:00:00'),
(2718245, 192, 'Dalby', 59.533329, 17.350000, '0000-00-00 00:00:00'),
(6691859, 68, 'Teekkarikylae', 60.189590, 24.835020, '0000-00-00 00:00:00'),
(3147474, 163, 'Lillehammer', 61.115139, 10.466280, '0000-00-00 00:00:00'),
(3145580, 163, 'Molde', 62.737518, 7.159120, '0000-00-00 00:00:00'),
(3415496, 105, 'Keflavik', 64.004921, -22.562420, '0000-00-00 00:00:00'),
(647741, 68, 'Lohtaja', 64.024719, 23.504820, '0000-00-00 00:00:00'),
(5870294, 226, 'North Pole', 64.751106, -147.349442, '0000-00-00 00:00:00'),
(3157781, 163, 'Fauske', 67.258827, 15.391810, '0000-00-00 00:00:00'),
(5983607, 36, 'Inuvik', 68.349861, -133.721817, '0000-00-00 00:00:00'),
(5870441, 226, 'Nuiqsut', 70.217499, -150.976395, '0000-00-00 00:00:00'),
(3167269, 106, 'SantOreste', 42.234718, 12.519370, '0000-00-00 00:00:00'),
(3164185, 106, 'Villanova dAlbenga', 44.047249, 8.143360, '0000-00-00 00:00:00'),
(3164175, 106, 'Villanova sullArda', 45.026470, 9.998470, '0000-00-00 00:00:00'),
(3177952, 106, 'Cortina dAmpezzo', 46.536900, 12.139030, '0000-00-00 00:00:00'),
(566891, 186, 'Dedenevo', 56.250000, 37.516670, '0000-00-00 00:00:00'),
(546606, 186, 'Kokoshkino', 55.597691, 37.169498, '0000-00-00 00:00:00'),
(520318, 186, 'Nizhnyaya Maktama', 54.863560, 52.428101, '0000-00-00 00:00:00'),
(553778, 186, 'Kamenka', 43.533329, 43.516670, '0000-00-00 00:00:00'),
(524311, 186, 'Murino', 60.049438, 30.445869, '0000-00-00 00:00:00'),
(495394, 186, 'Shchekino', 54.009171, 37.511940, '0000-00-00 00:00:00'),
(520068, 186, 'Noginsk', 55.866470, 38.443802, '0000-00-00 00:00:00'),
(580227, 186, 'Avsyunino', 55.565159, 39.123241, '0000-00-00 00:00:00'),
(580167, 186, 'Aysha', 55.870350, 48.631870, '0000-00-00 00:00:00'),
(473247, 186, 'Vladimir', 56.136551, 40.396580, '0000-00-00 00:00:00'),
(693805, 224, 'Simferopol', 44.957191, 34.110790, '0000-00-00 00:00:00'),
(488839, 186, 'Starodzhereliyevskaya', 45.475990, 38.296799, '0000-00-00 00:00:00'),
(536219, 186, 'Lenina', 46.066669, 39.783329, '0000-00-00 00:00:00'),
(713154, 224, 'Askaniya Nova', 46.451351, 33.868889, '0000-00-00 00:00:00'),
(706466, 224, 'Khartsyzsk', 48.042431, 38.147282, '0000-00-00 00:00:00'),
(831130, 186, 'Znamensk', 48.584202, 45.733799, '0000-00-00 00:00:00'),
(98463, 103, 'As Sulaymaniyah', 35.561131, 45.437489, '0000-00-00 00:00:00'),
(504341, 186, 'Pskov', 57.813599, 28.349600, '0000-00-00 00:00:00'),
(1262995, 102, 'Mirzapur', 25.150000, 82.583328, '0000-00-00 00:00:00'),
(1270171, 102, 'Haveri', 14.800000, 75.400002, '0000-00-00 00:00:00'),
(1488754, 186, 'Tyumen', 57.152222, 65.527222, '0000-00-00 00:00:00'),
(3450909, 30, 'Rondonopolis', -16.470831, -54.635559, '0000-00-00 00:00:00'),
(1259229, 102, 'Pune', 18.519569, 73.855347, '0000-00-00 00:00:00'),
(294666, 100, 'Hurfeish', 33.017109, 35.348351, '0000-00-00 00:00:00'),
(1260086, 102, 'Patna', 25.600000, 85.116669, '0000-00-00 00:00:00'),
(562625, 186, 'Firsanovka', 55.953609, 37.240829, '0000-00-00 00:00:00'),
(540776, 186, 'Kromy', 52.687618, 35.766651, '0000-00-00 00:00:00'),
(466806, 186, 'Yoshkar-Ola', 56.638771, 47.890781, '0000-00-00 00:00:00'),
(528293, 186, 'Maykop', 44.607780, 40.105831, '0000-00-00 00:00:00'),
(543731, 186, 'Kotelniki', 55.635460, 37.844501, '0000-00-00 00:00:00'),
(498698, 186, 'Saransk', 54.183800, 45.174900, '0000-00-00 00:00:00'),
(2121874, 186, 'Pravda', 46.939560, 142.009033, '0000-00-00 00:00:00'),
(1512236, 186, 'Abakan', 53.715561, 91.429169, '0000-00-00 00:00:00'),
(2013159, 186, 'Yakutsk', 62.033890, 129.733063, '0000-00-00 00:00:00'),
(4718711, 226, 'Pflugerville', 30.439369, -97.620003, '0000-00-00 00:00:00'),
(7260215, 226, 'Tyndall Air Force Base', 30.085350, -85.607307, '0000-00-00 00:00:00'),
(6111704, 36, 'Port Colborne', 42.900120, -79.232880, '0000-00-00 00:00:00'),
(5126521, 226, 'Medina', 43.220058, -78.386971, '0000-00-00 00:00:00'),
(5935277, 36, 'Dartmouth', 44.671341, -63.577190, '0000-00-00 00:00:00'),
(7535690, 36, 'Donnacona', 46.680420, -71.723900, '0000-00-00 00:00:00'),
(6943827, 36, 'Thetford-Mines', 46.093712, -71.305389, '0000-00-00 00:00:00'),
(7602078, 36, 'Ladner', 49.089378, -123.082413, '0000-00-00 00:00:00'),
(5586496, 226, 'Bonners Ferry', 48.691330, -116.316307, '0000-00-00 00:00:00'),
(5896522, 36, 'Beaumont', 53.350128, -113.418709, '0000-00-00 00:00:00'),
(6067747, 36, 'Matagami', 49.750179, -77.632767, '0000-00-00 00:00:00'),
(6093347, 36, 'Olds', 51.783409, -114.101990, '0000-00-00 00:00:00'),
(5962582, 36, 'Golden', 51.299950, -116.968903, '0000-00-00 00:00:00'),
(3470127, 30, 'Belo Horizonte', -19.920830, -43.937778, '0000-00-00 00:00:00'),
(3353811, 156, 'Otjiwarongo', -20.463690, 16.647720, '0000-00-00 00:00:00'),
(933366, 33, 'Maun', -19.983330, 23.416670, '0000-00-00 00:00:00'),
(890422, 243, 'Gweru', -19.450001, 29.816669, '0000-00-00 00:00:00'),
(3469058, 30, 'Brasilia', -15.779720, -47.929722, '0000-00-00 00:00:00'),
(1635882, 98, 'Mataram', -8.583330, 116.116669, '0000-00-00 00:00:00'),
(3676623, 47, 'Leticia', -4.215280, -69.940559, '0000-00-00 00:00:00'),
(1640344, 98, 'Kendari', -3.945000, 122.498894, '0000-00-00 00:00:00'),
(186301, 111, 'Mombasa', -4.054660, 39.663589, '0000-00-00 00:00:00'),
(198629, 111, 'Eldoret', 0.520360, 35.269920, '0000-00-00 00:00:00'),
(191245, 111, 'Kisumu', -0.102210, 34.761711, '0000-00-00 00:00:00'),
(3674654, 47, 'Mocoa', 1.149330, -76.646606, '0000-00-00 00:00:00'),
(3396016, 30, 'Macapa', 0.038890, -51.066391, '0000-00-00 00:00:00'),
(3674740, 47, 'Miraflores', 1.336670, -71.951111, '0000-00-00 00:00:00'),
(215771, 38, 'Isiro', 2.773910, 27.616030, '0000-00-00 00:00:00'),
(2234359, 45, 'Bertoua', 4.583330, 13.683330, '0000-00-00 00:00:00'),
(3665900, 47, 'Villavicencio', 4.142000, -73.626640, '0000-00-00 00:00:00'),
(3671519, 47, 'Puerto Carreno', 6.189030, -67.485878, '0000-00-00 00:00:00'),
(2220957, 45, 'Yaounde', 3.866670, 11.516670, '0000-00-00 00:00:00'),
(2325330, 160, 'Owerri', 5.483330, 7.030410, '0000-00-00 00:00:00'),
(1716771, 172, 'Cotabato', 7.223610, 124.246391, '0000-00-00 00:00:00'),
(2224827, 45, 'Ngaoundere', 7.316670, 13.583330, '0000-00-00 00:00:00'),
(1679432, 172, 'Zamboanga', 6.910280, 122.073891, '0000-00-00 00:00:00'),
(1729933, 172, 'Aurora', 7.950600, 123.582603, '0000-00-00 00:00:00'),
(1151933, 213, 'Nakhon Si Thammarat', 8.433330, 99.966667, '0000-00-00 00:00:00'),
(2419533, 84, 'Kindia', 10.056920, -12.865760, '0000-00-00 00:00:00'),
(1717512, 172, 'Cebu City', 10.316720, 123.890709, '0000-00-00 00:00:00'),
(2229798, 45, 'Kousseri', 12.076890, 15.030630, '0000-00-00 00:00:00'),
(3668605, 47, 'Santa Marta', 11.240790, -74.199043, '0000-00-00 00:00:00'),
(2454268, 141, 'Koutiala', 12.391730, -5.464210, '0000-00-00 00:00:00'),
(1151074, 213, 'Prachuap Khiri Khan', 11.820980, 99.784103, '0000-00-00 00:00:00'),
(2339937, 160, 'Gusau', 12.162780, 6.661350, '0000-00-00 00:00:00'),
(1264527, 102, 'Chennai', 13.087840, 80.278473, '0000-00-00 00:00:00'),
(2455518, 141, 'Kayes', 14.441700, -11.434100, '0000-00-00 00:00:00'),
(2451778, 141, 'San', 13.303350, -4.895620, '0000-00-00 00:00:00'),
(1614295, 213, 'Phatthaya', 12.933330, 100.883331, '0000-00-00 00:00:00'),
(1712813, 172, 'Gloria', 12.983330, 121.466667, '0000-00-00 00:00:00'),
(1690086, 172, 'Poblacion, San Felipe', 15.062220, 120.070000, '0000-00-00 00:00:00'),
(2453348, 141, 'Mopti', 14.493020, -4.194200, '0000-00-00 00:00:00'),
(2455216, 141, 'Kita', 13.034900, -9.489500, '0000-00-00 00:00:00'),
(3530597, 153, 'Mexico City', 19.428471, -99.127663, '0000-00-00 00:00:00'),
(1153669, 213, 'Chiang Rai', 19.908581, 99.832497, '0000-00-00 00:00:00'),
(105343, 188, 'Jeddah', 21.516939, 39.219170, '0000-00-00 00:00:00'),
(1266128, 102, 'Koraput', 18.816669, 82.716667, '0000-00-00 00:00:00'),
(1809858, 46, 'Guangzhou', 23.116671, 113.250000, '0000-00-00 00:00:00'),
(292968, 2, 'Abu Dhabi', 24.466669, 54.366669, '0000-00-00 00:00:00'),
(108410, 188, 'Riyadh', 24.687731, 46.721851, '0000-00-00 00:00:00'),
(289813, 182, 'Dukhan', 25.429720, 50.785831, '0000-00-00 00:00:00'),
(109435, 188, 'Al Jubayl', 27.011221, 49.658260, '0000-00-00 00:00:00'),
(2513798, 66, 'Mogan', 27.883850, -15.725380, '0000-00-00 00:00:00'),
(1172451, 173, 'Lahore', 31.549721, 74.343613, '0000-00-00 00:00:00'),
(358448, 63, 'Damanhur', 31.039169, 30.469139, '0000-00-00 00:00:00'),
(2643812, 75, 'Lochmaben', 55.130112, -3.442860, '0000-00-00 00:00:00'),
(1138336, 3, 'Kandahar', 31.613319, 65.710129, '0000-00-00 00:00:00'),
(1886760, 46, 'Suzhou', 31.311390, 120.618057, '0000-00-00 00:00:00'),
(1858421, 110, 'Kumamoto-shi', 32.789719, 130.741669, '0000-00-00 00:00:00'),
(2113164, 110, 'Abiko', 35.866669, 140.016663, '0000-00-00 00:00:00'),
(1139715, 3, 'Jalalabad', 34.426472, 70.451530, '0000-00-00 00:00:00'),
(1790630, 46, 'Xian', 34.258331, 108.928612, '0000-00-00 00:00:00'),
(90150, 103, 'Tikrit', 34.607121, 43.678219, '0000-00-00 00:00:00'),
(5550192, 226, 'West Sedona', 34.867241, -111.805428, '0000-00-00 00:00:00'),
(1145352, 3, 'Charikar', 35.013611, 69.171387, '0000-00-00 00:00:00'),
(1863945, 110, 'Fukuroi', 34.750000, 137.916672, '0000-00-00 00:00:00'),
(1854383, 110, 'Okayama-shi', 34.661671, 133.934998, '0000-00-00 00:00:00'),
(1147540, 3, 'Baghlan', 36.130680, 68.708290, '0000-00-00 00:00:00'),
(4491651, 226, 'Siler City', 35.723469, -79.462242, '0000-00-00 00:00:00'),
(1850147, 110, 'Tokyo', 35.689499, 139.691711, '0000-00-00 00:00:00'),
(1846986, 118, 'Andong', 36.565559, 128.725006, '0000-00-00 00:00:00'),
(1797929, 46, 'Qingdao', 36.098610, 120.371941, '0000-00-00 00:00:00'),
(4106689, 226, 'Corning', 36.407841, -90.579826, '0000-00-00 00:00:00'),
(2517816, 66, 'Estepona', 36.427639, -5.145890, '0000-00-00 00:00:00'),
(2514169, 66, 'Marbella', 36.515430, -4.885830, '0000-00-00 00:00:00'),
(2111258, 110, 'Ryugasaki', 35.900002, 140.183334, '0000-00-00 00:00:00'),
(2521886, 66, 'Almeria', 36.838139, -2.459740, '0000-00-00 00:00:00'),
(325363, 219, 'Adana', 37.001671, 35.328892, '0000-00-00 00:00:00'),
(1849053, 110, 'Utsunomiya-shi', 36.565830, 139.883606, '0000-00-00 00:00:00'),
(2513709, 66, 'Monachil', 37.133202, -3.537240, '0000-00-00 00:00:00'),
(2518794, 66, 'Dos Hermanas', 37.282871, -5.920880, '0000-00-00 00:00:00'),
(298333, 219, 'Sanliurfa', 37.167080, 38.793919, '0000-00-00 00:00:00'),
(2522208, 66, 'Albolote', 37.230881, -3.655100, '0000-00-00 00:00:00'),
(303195, 219, 'Osmaniye', 37.074169, 36.247780, '0000-00-00 00:00:00'),
(4759735, 226, 'Fort Lee', 37.495701, -77.335258, '0000-00-00 00:00:00'),
(320392, 219, 'Burdur', 37.720280, 30.290831, '0000-00-00 00:00:00'),
(2525068, 106, 'Catania', 37.502129, 15.087190, '0000-00-00 00:00:00'),
(320995, 219, 'Bodrum', 37.038330, 27.429171, '0000-00-00 00:00:00'),
(2510253, 66, 'Torrevieja', 37.978722, -0.682220, '0000-00-00 00:00:00'),
(4383513, 226, 'De Soto', 38.139500, -90.555130, '0000-00-00 00:00:00'),
(2523920, 106, 'Palermo', 38.115822, 13.359760, '0000-00-00 00:00:00'),
(308464, 219, 'Kayseri', 38.732220, 35.485279, '0000-00-00 00:00:00'),
(5417561, 226, 'Colorado City', 37.945290, -104.835258, '0000-00-00 00:00:00'),
(303290, 219, 'Ortakoy', 38.737282, 34.038658, '0000-00-00 00:00:00'),
(304827, 219, 'Manisa', 38.612019, 27.426460, '0000-00-00 00:00:00'),
(5422191, 226, 'Fountain', 38.682220, -104.700813, '0000-00-00 00:00:00'),
(2516255, 66, 'Jumilla', 38.479172, -1.325000, '0000-00-00 00:00:00'),
(4377664, 226, 'Blue Springs', 39.016949, -94.281609, '0000-00-00 00:00:00'),
(305268, 219, 'Kutahya', 39.424171, 29.983330, '0000-00-00 00:00:00'),
(325303, 219, 'Afyonkarahisar', 38.756672, 30.543329, '0000-00-00 00:00:00'),
(2510919, 66, 'Ses Salines', 39.338310, 3.052740, '0000-00-00 00:00:00'),
(2523023, 106, 'Spezzano della Sila', 39.301289, 16.338699, '0000-00-00 00:00:00'),
(309647, 219, 'Agri', 39.719440, 43.051392, '0000-00-00 00:00:00'),
(2511930, 66, 'Requena', 39.488338, -1.100440, '0000-00-00 00:00:00'),
(322165, 219, 'Balikesir', 39.649170, 27.886110, '0000-00-00 00:00:00'),
(4503289, 226, 'North Beach Haven', 39.573170, -74.231529, '0000-00-00 00:00:00'),
(4910663, 226, 'Savoy', 40.054749, -88.251717, '0000-00-00 00:00:00'),
(3124408, 66, 'Coslada', 40.423779, -3.561290, '0000-00-00 00:00:00'),
(750598, 219, 'Bilecik', 40.141918, 29.979321, '0000-00-00 00:00:00'),
(743952, 219, 'Kars', 40.601990, 43.094952, '0000-00-00 00:00:00'),
(3108126, 66, 'Teruel', 40.345600, -1.106460, '0000-00-00 00:00:00'),
(5937615, 36, 'Delta', 49.143990, -122.906799, '0000-00-00 00:00:00'),
(3111108, 66, 'Salamanca', 40.966671, -5.650000, '0000-00-00 00:00:00'),
(259973, 87, 'Chios', 38.367779, 26.135830, '0000-00-00 00:00:00'),
(3165828, 106, 'Tempio Pausania', 40.897369, 9.103520, '0000-00-00 00:00:00'),
(4868205, 226, 'Mount Pleasant', 40.963638, -91.557938, '0000-00-00 00:00:00'),
(740264, 219, 'Samsun', 41.286671, 36.330002, '0000-00-00 00:00:00'),
(743882, 219, 'Kastamonu', 41.378052, 33.775280, '0000-00-00 00:00:00'),
(3170196, 106, 'Pontinia', 41.410912, 13.044100, '0000-00-00 00:00:00'),
(4905006, 226, 'Ottawa', 41.345589, -88.842583, '0000-00-00 00:00:00'),
(4920512, 226, 'Fremont', 41.730881, -84.932739, '0000-00-00 00:00:00'),
(3115233, 66, 'Oimbra', 41.885540, -7.472160, '0000-00-00 00:00:00'),
(2513562, 66, 'Moratalla', 38.189281, -1.891830, '0000-00-00 00:00:00'),
(3181628, 106, 'Bracciano', 42.103062, 12.175430, '0000-00-00 00:00:00'),
(3120514, 66, 'Huesca', 42.136150, -0.408700, '0000-00-00 00:00:00'),
(3105976, 66, 'Vigo', 42.232819, -8.722640, '0000-00-00 00:00:00'),
(3116653, 66, 'Moana', 42.283329, -8.750000, '0000-00-00 00:00:00'),
(3114965, 66, 'Ourense', 42.333328, -7.850000, '0000-00-00 00:00:00'),
(3119172, 66, 'Laracha', 43.253750, -8.585350, '0000-00-00 00:00:00'),
(3174112, 106, 'Manciano', 42.587921, 11.516250, '0000-00-00 00:00:00'),
(3110880, 66, 'San Andres del Rabanedo', 42.611740, -5.616710, '0000-00-00 00:00:00'),
(1854083, 110, 'Omuta', 33.033329, 130.449997, '0000-00-00 00:00:00'),
(3176854, 106, 'Foligno', 42.944038, 12.701070, '0000-00-00 00:00:00'),
(3124002, 66, 'Curtis', 43.083328, -8.066670, '0000-00-00 00:00:00'),
(5000873, 226, 'Marine City', 42.719479, -82.492126, '0000-00-00 00:00:00'),
(5267785, 226, 'Portage', 43.539150, -89.462624, '0000-00-00 00:00:00'),
(3114711, 66, 'Oviedo', 43.360291, -5.844760, '0000-00-00 00:00:00'),
(3129329, 66, 'Arteixo', 43.304821, -8.507490, '0000-00-00 00:00:00'),
(5596475, 226, 'Idaho Falls', 43.466579, -112.034142, '0000-00-00 00:00:00'),
(3108606, 66, 'Soto del Barco', 43.532879, -6.069840, '0000-00-00 00:00:00'),
(5036062, 226, 'Luverne', 43.654140, -96.212807, '0000-00-00 00:00:00'),
(4979261, 226, 'South Sanford', 43.411190, -70.742561, '0000-00-00 00:00:00'),
(3178957, 106, 'Cesena', 44.139099, 12.243150, '0000-00-00 00:00:00'),
(5767918, 226, 'Pierre', 44.368320, -100.350967, '0000-00-00 00:00:00'),
(5026291, 226, 'Faribault', 44.294960, -93.268829, '0000-00-00 00:00:00'),
(5226534, 226, 'Brookings', 44.311359, -96.798393, '0000-00-00 00:00:00'),
(3181928, 106, 'Bologna', 44.493809, 11.338750, '0000-00-00 00:00:00'),
(5036727, 226, 'Marshall', 44.446899, -95.788353, '0000-00-00 00:00:00'),
(5264475, 226, 'New Richmond', 45.123020, -92.536591, '0000-00-00 00:00:00'),
(5038018, 226, 'Montevideo', 44.942459, -95.723640, '0000-00-00 00:00:00'),
(3166018, 106, 'Susa', 45.137539, 7.054610, '0000-00-00 00:00:00'),
(5043556, 226, 'Rockford', 45.088299, -93.734413, '0000-00-00 00:00:00'),
(3164565, 106, 'Vercelli', 45.323059, 8.415330, '0000-00-00 00:00:00'),
(5042561, 226, 'Ramsey', 45.261101, -93.449997, '0000-00-00 00:00:00'),
(5266230, 226, 'Park Falls', 45.934399, -90.441551, '0000-00-00 00:00:00'),
(3173369, 106, 'Mirano', 45.494438, 12.104720, '0000-00-00 00:00:00'),
(3175627, 106, 'Jesolo', 45.533112, 12.644750, '0000-00-00 00:00:00'),
(5046026, 226, 'Sauk Centre', 45.737461, -94.952522, '0000-00-00 00:00:00'),
(5000625, 226, 'Manistique', 45.957748, -86.246246, '0000-00-00 00:00:00'),
(5038252, 226, 'Morris', 45.586071, -95.913940, '0000-00-00 00:00:00'),
(3165185, 106, 'Trieste', 45.648609, 13.780000, '0000-00-00 00:00:00'),
(3168429, 106, 'San Dona di Piave', 45.631672, 12.569440, '0000-00-00 00:00:00'),
(722437, 97, 'Bekescsaba', 46.683331, 21.100000, '0000-00-00 00:00:00'),
(721592, 97, 'Csongrad', 46.713322, 20.142420, '0000-00-00 00:00:00'),
(673150, 184, 'Calarasi', 44.216671, 27.299999, '0000-00-00 00:00:00'),
(2766824, 11, 'Salzburg', 47.799412, 13.043990, '0000-00-00 00:00:00'),
(3053281, 97, 'Erd', 47.394890, 18.913601, '0000-00-00 00:00:00'),
(2842688, 55, 'Saalfeld', 50.650002, 11.366670, '0000-00-00 00:00:00'),
(2871964, 55, 'Mengen', 48.049511, 9.330050, '0000-00-00 00:00:00'),
(5058868, 226, 'Devils Lake', 48.112782, -98.865120, '0000-00-00 00:00:00'),
(2869120, 55, 'Mosbach', 49.353889, 9.142780, '0000-00-00 00:00:00'),
(2877550, 55, 'Lindau', 47.549999, 9.683330, '0000-00-00 00:00:00'),
(2831948, 55, 'Sindelfingen', 48.700001, 9.016670, '0000-00-00 00:00:00'),
(3057630, 197, 'Skalica', 48.844898, 17.226351, '0000-00-00 00:00:00'),
(3061186, 197, 'Banska Bystrica', 48.739460, 19.153490, '0000-00-00 00:00:00'),
(723846, 197, 'Poprad', 49.061440, 20.297979, '0000-00-00 00:00:00'),
(3068293, 54, 'Pisek', 49.308800, 14.147500, '0000-00-00 00:00:00'),
(3068830, 54, 'Oslavany', 49.123348, 16.336531, '0000-00-00 00:00:00'),
(2948825, 55, 'Bingen am Rhein', 49.966671, 7.900000, '0000-00-00 00:00:00'),
(2956656, 55, 'Amberg', 49.441391, 11.862220, '0000-00-00 00:00:00'),
(3068160, 54, 'Plzen', 49.747471, 13.377590, '0000-00-00 00:00:00'),
(2903806, 55, 'Hirschau', 49.544998, 11.950830, '0000-00-00 00:00:00'),
(2829758, 55, 'Stadtlohn', 51.983330, 6.933330, '0000-00-00 00:00:00'),
(3070325, 54, 'Moravska Trebova', 49.757931, 16.664261, '0000-00-00 00:00:00'),
(2836320, 55, 'Schorndorf', 48.805370, 9.527210, '0000-00-00 00:00:00'),
(3074967, 54, 'Hradec Kralove', 50.209229, 15.832770, '0000-00-00 00:00:00'),
(3210390, 55, 'Marktrodach', 50.250000, 11.383330, '0000-00-00 00:00:00'),
(3074110, 54, 'Jirkov', 50.499790, 13.447690, '0000-00-00 00:00:00'),
(2935022, 55, 'Dresden', 51.050892, 13.738320, '0000-00-00 00:00:00'),
(2651048, 75, 'Dover', 51.133331, 1.300000, '0000-00-00 00:00:00'),
(2934246, 55, 'Dusseldorf', 51.221722, 6.776160, '0000-00-00 00:00:00'),
(2855745, 55, 'Paderborn', 51.719051, 8.754390, '0000-00-00 00:00:00'),
(2750630, 162, 'Monster', 52.025829, 4.175000, '0000-00-00 00:00:00'),
(2828105, 55, 'Steinfurt', 52.150452, 7.336640, '0000-00-00 00:00:00'),
(2960964, 99, 'Loch Garman', 52.334171, -6.457500, '0000-00-00 00:00:00'),
(2638717, 75, 'Saint Neots', 52.216671, -0.266670, '0000-00-00 00:00:00'),
(2804313, 55, 'Ziemetshausen', 48.292439, 10.535030, '0000-00-00 00:00:00'),
(3310247, 99, 'Shannon', 52.703892, -8.864170, '0000-00-00 00:00:00'),
(2963436, 99, 'Kildare', 53.156109, -6.914440, '0000-00-00 00:00:00'),
(2960936, 99, 'Wicklow', 52.974998, -6.049440, '0000-00-00 00:00:00'),
(2962029, 99, 'Portarlington', 53.162220, -7.191110, '0000-00-00 00:00:00'),
(6179602, 36, 'Wetaskiwin', 52.966831, -113.368690, '0000-00-00 00:00:00'),
(2693678, 192, 'Lund', 55.705841, 13.193210, '0000-00-00 00:00:00'),
(2619068, 57, 'Karup', 56.306728, 9.168350, '0000-00-00 00:00:00'),
(2615006, 57, 'Randers', 56.466671, 10.050000, '0000-00-00 00:00:00'),
(2708365, 192, 'Halmstad', 56.674461, 12.856760, '0000-00-00 00:00:00'),
(2663536, 192, 'Vaexjoe', 56.877670, 14.809060, '0000-00-00 00:00:00'),
(2686657, 192, 'Orebro', 59.274120, 15.206600, '0000-00-00 00:00:00'),
(2676176, 192, 'Soedertaelje', 59.195541, 17.625250, '0000-00-00 00:00:00'),
(2673730, 192, 'Stockholm', 59.332581, 18.064899, '0000-00-00 00:00:00'),
(6138201, 36, 'Saint-Felicien', 48.650070, -72.449059, '0000-00-00 00:00:00'),
(3134070, 163, 'Tranby', 59.816669, 10.250000, '0000-00-00 00:00:00'),
(6185377, 36, 'Yellowknife', 62.456001, -114.352547, '0000-00-00 00:00:00'),
(650859, 68, 'Kouvola', 60.866669, 26.700001, '0000-00-00 00:00:00'),
(2676224, 192, 'Soderhamn', 61.303730, 17.059210, '0000-00-00 00:00:00'),
(5858289, 226, 'Butte', 61.542221, -149.033325, '0000-00-00 00:00:00'),
(655194, 68, 'Jyvaeskylae', 62.233330, 25.733330, '0000-00-00 00:00:00'),
(2671530, 192, 'Storuman', 65.095901, 17.117310, '0000-00-00 00:00:00'),
(2702997, 192, 'Jokkmokk', 66.606651, 19.823240, '0000-00-00 00:00:00'),
(652590, 68, 'Kittila', 67.666672, 24.900000, '0000-00-00 00:00:00'),
(508606, 186, 'Pochinok', 54.406849, 32.440670, '0000-00-00 00:00:00'),
(2335727, 160, 'Kaduna', 10.522240, 7.438280, '0000-00-00 00:00:00'),
(508101, 186, 'Podolsk', 55.424179, 37.554722, '0000-00-00 00:00:00'),
(2068079, 12, 'Kwinana', -32.250000, 115.766670, '0000-00-00 00:00:00'),
(2803560, 55, 'Zwickau', 50.733330, 12.500000, '0000-00-00 00:00:00'),
(3573374, 5, 'The Valley', 18.217039, -63.057831, '0000-00-00 00:00:00'),
(2140691, 157, 'Kone', -21.059509, 164.865814, '0000-00-00 00:00:00'),
(2150660, 12, 'Saint Kilda', -37.867599, 144.980988, '0000-00-00 00:00:00'),
(2146142, 12, 'Townsville', -19.250000, 146.800003, '0000-00-00 00:00:00');
INSERT INTO `OPENWEATHER_CITY` (`CITY_ID`, `COUNTRY_ID`, `CITY_NAME`, `CITY_LAT`, `CITY_LNG`, `LM_DATE`) VALUES
(3456283, 30, 'Niteroi', -22.883329, -43.103611, '0000-00-00 00:00:00'),
(3127978, 66, 'Blanes', 41.674191, 2.790360, '0000-00-00 00:00:00'),
(2645442, 75, 'Kingsteignton', 50.549999, -3.583330, '0000-00-00 00:00:00'),
(265500, 87, 'Aigio', 38.248611, 22.081940, '0000-00-00 00:00:00'),
(3013361, 73, 'Hesingue', 47.576210, 7.522440, '0000-00-00 00:00:00'),
(3164383, 106, 'Vigarano Mainarda', 44.840080, 11.494710, '0000-00-00 00:00:00'),
(3177363, 106, 'Ercolano', 40.806309, 14.360930, '0000-00-00 00:00:00'),
(2809517, 55, 'Wiehl', 50.950001, 7.533330, '0000-00-00 00:00:00'),
(2066052, 12, 'Moana', -35.200001, 138.483337, '0000-00-00 00:00:00'),
(3428071, 9, 'Santo Tome', -28.549391, -56.040771, '0000-00-00 00:00:00'),
(3859512, 9, 'Dean Funes', -30.420361, -64.349838, '0000-00-00 00:00:00'),
(3111199, 66, 'Sabadell', 41.543289, 2.109420, '0000-00-00 00:00:00'),
(3129857, 66, 'Aranjuez', 40.031078, -3.602460, '0000-00-00 00:00:00'),
(256223, 87, 'Ovria', 38.183331, 21.716669, '0000-00-00 00:00:00'),
(2637853, 75, 'Sidmouth', 50.690941, -3.239700, '0000-00-00 00:00:00'),
(2510301, 66, 'Torredonjimeno', 37.767479, -3.957760, '0000-00-00 00:00:00'),
(3113082, 66, 'Portugalete', 43.320992, -3.020640, '0000-00-00 00:00:00'),
(2184155, 166, 'Pukekohe East', -37.200001, 174.949997, '0000-00-00 00:00:00'),
(2979783, 73, 'Saint-Germain-en-Laye', 48.900002, 2.083330, '0000-00-00 00:00:00'),
(2869791, 55, 'Monheim', 51.083328, 6.883330, '0000-00-00 00:00:00'),
(4566447, 177, 'Olimpo', 18.001909, -66.108223, '0000-00-00 00:00:00'),
(2510279, 66, 'Torrent', 39.437050, -0.465460, '0000-00-00 00:00:00'),
(3178738, 106, 'Ciampino', 41.801620, 12.606580, '0000-00-00 00:00:00'),
(2958376, 55, 'Allershausen', 48.433331, 11.600000, '0000-00-00 00:00:00'),
(3182734, 106, 'Asola', 45.221081, 10.413580, '0000-00-00 00:00:00'),
(3180991, 106, 'Campobasso', 41.560032, 14.667530, '0000-00-00 00:00:00'),
(4272558, 226, 'Halstead', 38.001400, -97.508652, '0000-00-00 00:00:00'),
(678688, 184, 'Dumbravita', 45.796940, 21.242500, '0000-00-00 00:00:00'),
(2928810, 55, 'Essen', 51.450001, 7.016670, '0000-00-00 00:00:00'),
(2149475, 12, 'Singleton', -32.566669, 151.183334, '0000-00-00 00:00:00'),
(6058560, 36, 'London', 42.983391, -81.233040, '0000-00-00 00:00:00'),
(2633373, 75, 'Yeovil', 50.941589, -2.632110, '0000-00-00 00:00:00'),
(2644993, 75, 'Lambourn', 51.508049, -1.531050, '0000-00-00 00:00:00'),
(2922102, 55, 'Geesthacht', 53.433331, 10.366670, '0000-00-00 00:00:00'),
(2658216, 41, 'Uster', 47.347130, 8.720910, '0000-00-00 00:00:00'),
(265488, 87, 'Acharnes', 38.083328, 23.733330, '0000-00-00 00:00:00'),
(2644577, 75, 'Leven', 56.200001, -3.000000, '0000-00-00 00:00:00'),
(726320, 21, 'Troyan', 42.894272, 24.715891, '0000-00-00 00:00:00'),
(730919, 21, 'Ikhtiman', 42.433331, 23.816669, '0000-00-00 00:00:00'),
(3109718, 66, 'Santander', 43.464722, -3.804440, '0000-00-00 00:00:00'),
(2813464, 55, 'Wedel', 53.583740, 9.698350, '0000-00-00 00:00:00'),
(2654728, 75, 'Bridlington', 54.083061, -0.191920, '0000-00-00 00:00:00'),
(2511420, 66, 'Sencelles', 39.645981, 2.897690, '0000-00-00 00:00:00'),
(3094086, 174, 'Kwidzyn', 53.724949, 18.931141, '0000-00-00 00:00:00'),
(2510580, 66, 'Teba', 36.983582, -4.919130, '0000-00-00 00:00:00'),
(673807, 184, 'Marginea', 47.816669, 25.816669, '0000-00-00 00:00:00'),
(3175840, 106, 'Gressan', 45.720661, 7.286900, '0000-00-00 00:00:00'),
(2646828, 75, 'Histon', 52.251659, 0.106430, '0000-00-00 00:00:00'),
(4588936, 226, 'New Ellenton', 33.421532, -81.685669, '0000-00-00 00:00:00'),
(2986220, 73, 'Pont-du-Casse', 44.228668, 0.679240, '0000-00-00 00:00:00'),
(3107775, 66, 'Torrelavega', 43.349442, -4.047850, '0000-00-00 00:00:00'),
(2649963, 75, 'Epping', 51.698151, 0.110550, '0000-00-00 00:00:00'),
(6144312, 36, 'Sept-Iles', 50.200111, -66.382080, '0000-00-00 00:00:00'),
(3128201, 66, 'Berga', 42.104290, 1.846280, '0000-00-00 00:00:00'),
(2640526, 75, 'Peebles', 55.651901, -3.188800, '0000-00-00 00:00:00'),
(2512127, 66, 'Pucol', 39.616669, -0.300000, '0000-00-00 00:00:00'),
(2164149, 12, 'Guyra', -30.233330, 151.666672, '0000-00-00 00:00:00'),
(4951699, 226, 'Spencer', 42.243980, -71.992302, '0000-00-00 00:00:00'),
(2915128, 55, 'Gross-Rohrheim', 49.721111, 8.482780, '0000-00-00 00:00:00'),
(2996905, 73, 'Machecoul', 46.993580, -1.823520, '0000-00-00 00:00:00'),
(2640559, 75, 'Paulton', 51.304722, -2.500280, '0000-00-00 00:00:00'),
(2638878, 75, 'Saffron Walden', 52.023369, 0.242340, '0000-00-00 00:00:00'),
(2177756, 12, 'Ararat', -37.283329, 142.933334, '0000-00-00 00:00:00'),
(2825108, 55, 'Suderlugum', 54.866669, 8.916670, '0000-00-00 00:00:00'),
(2757991, 162, 'Castricum', 52.548328, 4.669440, '0000-00-00 00:00:00'),
(2989460, 73, 'Orange', 44.139198, 4.807910, '0000-00-00 00:00:00'),
(2643186, 75, 'Maidenhead', 51.522789, -0.719860, '0000-00-00 00:00:00'),
(2929872, 55, 'Epfenbach', 49.339169, 8.907780, '0000-00-00 00:00:00'),
(2913972, 55, 'Gschwend', 48.933331, 9.744360, '0000-00-00 00:00:00'),
(2818766, 55, 'Unterschleissheim', 48.283329, 11.566670, '0000-00-00 00:00:00'),
(2160297, 12, 'Leura', -33.716671, 150.333328, '0000-00-00 00:00:00'),
(6944112, 36, 'Forestville', 48.738079, -69.084778, '0000-00-00 00:00:00'),
(2651930, 75, 'Cromer', 52.931229, 1.298920, '0000-00-00 00:00:00'),
(2740313, 179, 'Covilha', 40.286011, -7.503960, '0000-00-00 00:00:00'),
(2755204, 162, 'Grootegast', 53.212502, 6.273610, '0000-00-00 00:00:00'),
(3182164, 106, 'Bergamo', 45.697979, 9.668950, '0000-00-00 00:00:00'),
(2949012, 55, 'Bietigheim-Bissingen', 48.966671, 9.133330, '0000-00-00 00:00:00'),
(2960970, 99, 'Westport', 53.799999, -9.516670, '0000-00-00 00:00:00'),
(2638027, 75, 'Sherburn in Elmet', 53.795189, -1.246600, '0000-00-00 00:00:00'),
(5964700, 36, 'Greater Sudbury', 46.490002, -80.990013, '0000-00-00 00:00:00'),
(971421, 241, 'Newcastle', -27.757959, 29.931801, '0000-00-00 00:00:00'),
(2982757, 73, 'Rosny-sous-Bois', 48.870171, 2.499100, '0000-00-00 00:00:00'),
(2062338, 12, 'Rockingham', -32.283329, 115.716667, '0000-00-00 00:00:00'),
(349340, 63, 'Sharm ash Shaykh', 27.851830, 34.304989, '0000-00-00 00:00:00'),
(1007311, 241, 'Durban', -29.857901, 31.029200, '0000-00-00 00:00:00'),
(2994043, 73, 'Meze', 43.425041, 3.605900, '0000-00-00 00:00:00'),
(2822100, 55, 'Tirschenreuth', 49.882500, 12.333060, '0000-00-00 00:00:00'),
(1167718, 102, 'Punch', 33.767879, 74.089737, '0000-00-00 00:00:00'),
(1261913, 102, 'Nangloi Jat', 28.683331, 77.066673, '0000-00-00 00:00:00'),
(3172768, 106, 'Monterotondo', 42.052521, 12.618680, '0000-00-00 00:00:00'),
(2861402, 55, 'Oberasbach', 49.422749, 10.957660, '0000-00-00 00:00:00'),
(7669012, 36, 'Walnut Grove', 49.164730, -122.640419, '0000-00-00 00:00:00'),
(5798318, 226, 'Indianola', 47.747040, -122.525688, '0000-00-00 00:00:00'),
(2751738, 162, 'Lelystad', 52.508331, 5.475000, '0000-00-00 00:00:00'),
(2515708, 66, 'Lanjaron', 36.918530, -3.481800, '0000-00-00 00:00:00'),
(2986795, 73, 'Plerin', 48.542488, -2.779840, '0000-00-00 00:00:00'),
(6535757, 106, 'Turate', 45.657269, 9.004240, '0000-00-00 00:00:00'),
(3165576, 106, 'Tombolo', 45.639500, 11.825400, '0000-00-00 00:00:00'),
(2867160, 55, 'Nahe', 53.799999, 10.133330, '0000-00-00 00:00:00'),
(3352844, 156, 'Swakopmund', -22.683331, 14.533330, '0000-00-00 00:00:00'),
(2653279, 75, 'Cheddleton', 53.069099, -2.042280, '0000-00-00 00:00:00'),
(1847966, 110, 'Akashi', 34.633331, 134.983337, '0000-00-00 00:00:00'),
(6095645, 36, 'Owen Sound', 44.567169, -80.943489, '0000-00-00 00:00:00'),
(3117814, 66, 'Lugo', 43.000000, -7.566670, '0000-00-00 00:00:00'),
(3012649, 73, 'Issy-les-Moulineaux', 48.821041, 2.277180, '0000-00-00 00:00:00'),
(2634573, 75, 'Wellington', 52.700001, -2.516670, '0000-00-00 00:00:00'),
(3061734, 54, 'Zbysov', 49.155239, 16.349510, '0000-00-00 00:00:00'),
(2519466, 66, 'Xirivella', 39.465881, -0.425890, '0000-00-00 00:00:00'),
(3044760, 97, 'Szekszard', 46.350140, 18.709049, '0000-00-00 00:00:00'),
(3023107, 73, 'Courcelles-Chaussy', 49.108620, 6.403910, '0000-00-00 00:00:00'),
(785082, 140, 'Tetovo', 42.010559, 20.971390, '0000-00-00 00:00:00'),
(3182153, 106, 'Bernalda', 40.412819, 16.691990, '0000-00-00 00:00:00'),
(6535071, 106, 'Donnas', 45.602859, 7.774910, '0000-00-00 00:00:00'),
(6534790, 106, 'Tirolo - Tirol', 46.691021, 11.154270, '0000-00-00 00:00:00'),
(2841590, 55, 'Sankt Ingbert', 49.283329, 7.116670, '0000-00-00 00:00:00'),
(2463679, 87, 'Kerkyra', 39.619999, 19.919720, '0000-00-00 00:00:00'),
(1258847, 102, 'Rajkot', 22.299999, 70.783333, '0000-00-00 00:00:00'),
(2644726, 75, 'Leatherhead', 51.295929, -0.325900, '0000-00-00 00:00:00'),
(2665902, 192, 'Vadstena', 58.448631, 14.889690, '0000-00-00 00:00:00'),
(3168865, 106, 'Roverbella', 45.268082, 10.768790, '0000-00-00 00:00:00'),
(3463605, 30, 'Farroupilha', -29.225000, -51.347778, '0000-00-00 00:00:00'),
(3178521, 106, 'Cocquio Trevisago', 45.862881, 8.688230, '0000-00-00 00:00:00'),
(2636928, 75, 'Steyning', 50.887440, -0.327870, '0000-00-00 00:00:00'),
(5895650, 36, 'Beaconsfield', 45.433411, -73.865860, '0000-00-00 00:00:00'),
(2643198, 75, 'Maghull', 53.516190, -2.941170, '0000-00-00 00:00:00'),
(2619771, 57, 'Horsens', 55.860661, 9.850340, '0000-00-00 00:00:00'),
(6232082, 166, 'Pakuranga', -36.883331, 174.916672, '0000-00-00 00:00:00'),
(2975785, 73, 'Saulx-les-Chartreux', 48.690620, 2.267270, '0000-00-00 00:00:00'),
(5942845, 36, 'Drummondville', 45.883362, -72.482407, '0000-00-00 00:00:00'),
(2642974, 75, 'Marske-by-the-Sea', 54.591469, -1.019590, '0000-00-00 00:00:00'),
(3621184, 48, 'Turrialba', 9.904670, -83.683517, '0000-00-00 00:00:00'),
(3623369, 48, 'Jaco', 9.614970, -84.629753, '0000-00-00 00:00:00'),
(1727993, 172, 'Baliwagan', 10.397100, 122.891098, '0000-00-00 00:00:00'),
(2653346, 75, 'Chard', 50.872700, -2.965970, '0000-00-00 00:00:00'),
(3571824, 31, 'Nassau', 25.058229, -77.343063, '0000-00-00 00:00:00'),
(2964472, 99, 'Dunshaughlin', 53.512501, -6.540000, '0000-00-00 00:00:00'),
(3020810, 73, 'Dreux', 48.733330, 1.366670, '0000-00-00 00:00:00'),
(2509929, 66, 'Valldemossa', 39.710419, 2.622300, '0000-00-00 00:00:00'),
(2640045, 75, 'Porthmadog', 52.929241, -4.131370, '0000-00-00 00:00:00'),
(6077243, 36, 'Montreal', 45.508839, -73.587807, '0000-00-00 00:00:00'),
(6138610, 36, 'Saint-Laurent', 45.500080, -73.665848, '0000-00-00 00:00:00'),
(2525041, 106, 'Cefalu', 38.038559, 14.022850, '0000-00-00 00:00:00'),
(2509841, 66, 'Valverde', 27.806280, -17.915779, '0000-00-00 00:00:00'),
(2163355, 12, 'Hobart', -42.879360, 147.329407, '0000-00-00 00:00:00'),
(4564133, 177, 'Dorado', 18.458830, -66.267670, '0000-00-00 00:00:00'),
(3169700, 106, 'Quarto dAltino', 45.579441, 12.373330, '0000-00-00 00:00:00'),
(2633808, 75, 'Winslow', 51.942841, -0.881310, '0000-00-00 00:00:00'),
(2067260, 12, 'Maddington', -32.049999, 115.983330, '0000-00-00 00:00:00'),
(3168616, 106, 'Saludecio', 43.875160, 12.667050, '0000-00-00 00:00:00'),
(2804642, 55, 'Zeven', 53.299999, 9.283330, '0000-00-00 00:00:00'),
(3188225, 16, 'Velika Kladusa', 45.189442, 15.811670, '0000-00-00 00:00:00'),
(2643071, 75, 'March', 52.551311, 0.088280, '0000-00-00 00:00:00'),
(2755030, 162, 'Haaksbergen', 52.156670, 6.738890, '0000-00-00 00:00:00'),
(2647198, 75, 'Heckmondwike', 53.706459, -1.677470, '0000-00-00 00:00:00'),
(2653290, 75, 'Cheadle Hulme', 53.376099, -2.189700, '0000-00-00 00:00:00'),
(6535581, 106, 'Gambellara', 45.459789, 11.340100, '0000-00-00 00:00:00'),
(2658714, 41, 'Schoftland', 47.305721, 8.051380, '0000-00-00 00:00:00'),
(3985604, 153, 'San Luis Rio Colorado', 32.463058, -114.776672, '0000-00-00 00:00:00'),
(2653715, 75, 'Carnforth', 54.116669, -2.766670, '0000-00-00 00:00:00'),
(3003391, 73, 'Le Mesnil-Esnard', 49.413189, 1.145210, '0000-00-00 00:00:00'),
(3134865, 163, 'Tananger', 58.933331, 5.600000, '0000-00-00 00:00:00'),
(2657859, 75, 'Abbotts Ann', 51.189861, -1.531260, '0000-00-00 00:00:00'),
(2169956, 12, 'Cronulla', -34.049999, 151.149994, '0000-00-00 00:00:00'),
(2526435, 133, 'Zaio', 34.942822, -2.732900, '0000-00-00 00:00:00'),
(3065684, 54, 'Smrzovka', 50.738201, 15.246390, '0000-00-00 00:00:00'),
(2655664, 75, 'Billingham', 54.608280, -1.292140, '0000-00-00 00:00:00'),
(3415212, 105, 'Kopavogur', 64.112343, -21.912979, '0000-00-00 00:00:00'),
(2164129, 12, 'Gympie', -26.189791, 152.664993, '0000-00-00 00:00:00'),
(2897557, 55, 'Hundsangen', 50.450001, 7.983330, '0000-00-00 00:00:00'),
(5989045, 36, 'Kamloops', 50.666481, -120.319199, '0000-00-00 00:00:00'),
(665087, 184, 'Timisoara', 45.749439, 21.227221, '0000-00-00 00:00:00'),
(2857565, 55, 'Ohringen', 49.201672, 9.503890, '0000-00-00 00:00:00'),
(7536148, 121, 'Priozersk', 46.031059, 73.702469, '0000-00-00 00:00:00'),
(6094578, 36, 'Oshawa', 43.900120, -78.849571, '0000-00-00 00:00:00'),
(3166350, 106, 'Sorrento', 40.626011, 14.374410, '0000-00-00 00:00:00'),
(2654634, 75, 'Broadstone', 50.750000, -1.983330, '0000-00-00 00:00:00'),
(3179297, 106, 'Cavaria', 45.693371, 8.801430, '0000-00-00 00:00:00'),
(5993072, 36, 'Kitimat', 54.052441, -128.653427, '0000-00-00 00:00:00'),
(2636531, 75, 'Sunderland', 54.904652, -1.382220, '0000-00-00 00:00:00'),
(3123981, 66, 'Daganzo de Arriba', 40.542931, -3.454570, '0000-00-00 00:00:00'),
(3177140, 106, 'Favria', 45.331150, 7.690620, '0000-00-00 00:00:00'),
(3164630, 106, 'Velletri', 41.669220, 12.779290, '0000-00-00 00:00:00'),
(2637487, 75, 'Southampton', 50.903950, -1.404280, '0000-00-00 00:00:00'),
(5970234, 36, 'Hanna', 51.633430, -111.901810, '0000-00-00 00:00:00'),
(2890420, 55, 'Kirchlinteln', 52.950001, 9.316670, '0000-00-00 00:00:00'),
(2744483, 162, 'Wijk bij Duurstede', 51.974171, 5.341670, '0000-00-00 00:00:00'),
(2637087, 75, 'Stanford-le-Hope', 51.522739, 0.434220, '0000-00-00 00:00:00'),
(3181018, 106, 'Campi Bisenzio', 43.824551, 11.132420, '0000-00-00 00:00:00'),
(2985849, 73, 'Pouillon', 43.604801, -0.999470, '0000-00-00 00:00:00'),
(2810136, 55, 'Westhausen', 48.883331, 10.183330, '0000-00-00 00:00:00'),
(2637111, 75, 'Stalbridge', 50.958069, -2.375480, '0000-00-00 00:00:00'),
(3179323, 106, 'Cavallino', 40.312531, 18.200420, '0000-00-00 00:00:00'),
(2924802, 55, 'Friedberg', 50.349998, 8.766670, '0000-00-00 00:00:00'),
(2163237, 12, 'Home Hill', -19.666670, 147.416672, '0000-00-00 00:00:00'),
(3182399, 106, 'Barbarano Vicentino', 45.409489, 11.544400, '0000-00-00 00:00:00'),
(2990392, 73, 'Nieppe', 50.704250, 2.835060, '0000-00-00 00:00:00'),
(2270184, 179, 'Carcavelos', 38.691051, -9.322150, '0000-00-00 00:00:00'),
(3017512, 73, 'Fourmies', 50.015320, 4.047840, '0000-00-00 00:00:00'),
(2634617, 75, 'Wednesbury', 52.551399, -2.023550, '0000-00-00 00:00:00'),
(4939693, 226, 'Holliston', 42.200100, -71.424500, '0000-00-00 00:00:00'),
(2651324, 75, 'Dersingham', 52.845490, 0.503390, '0000-00-00 00:00:00'),
(2749812, 162, 'Noordwijk-Binnen', 52.235828, 4.447220, '0000-00-00 00:00:00'),
(2883236, 55, 'Krun', 47.500000, 11.283330, '0000-00-00 00:00:00'),
(3171366, 106, 'Pavia', 45.184460, 9.161450, '0000-00-00 00:00:00'),
(6535134, 106, 'Montagna in Valtellina', 46.178501, 9.902950, '0000-00-00 00:00:00'),
(2759633, 162, 'Assen', 52.996670, 6.562500, '0000-00-00 00:00:00'),
(3038555, 73, 'Aiffres', 46.294491, -0.421010, '0000-00-00 00:00:00'),
(2150163, 12, 'Sawtell', -30.383329, 153.100006, '0000-00-00 00:00:00'),
(3121519, 66, 'Gava', 41.306049, 2.001230, '0000-00-00 00:00:00'),
(3531673, 153, 'Cancun', 21.174290, -86.846558, '0000-00-00 00:00:00'),
(1858756, 110, 'Kosai-shi', 34.718399, 137.531754, '0000-00-00 00:00:00'),
(2510245, 66, 'Torrox', 36.757931, -3.952330, '0000-00-00 00:00:00'),
(2955822, 55, 'Apelern', 52.289791, 9.335800, '0000-00-00 00:00:00'),
(2921242, 55, 'Georgsmarienhutte', 52.200001, 8.050000, '0000-00-00 00:00:00'),
(3175058, 106, 'Latina', 41.466141, 12.904300, '0000-00-00 00:00:00'),
(4098161, 226, 'Winfield', 33.928989, -87.817253, '0000-00-00 00:00:00'),
(2206068, 12, 'New Town', -42.860001, 147.308334, '0000-00-00 00:00:00'),
(3130492, 66, 'Aldeanueva de la Vera', 40.127102, -5.701500, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `operations_queue`
--

DROP TABLE IF EXISTS `operations_queue`;
CREATE TABLE IF NOT EXISTS `operations_queue` (
  `TOPIC` char(255) NOT NULL,
  `DATANAME` char(255) NOT NULL,
  `DATAVALUE` char(255) NOT NULL,
  `EXPIRE` datetime NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optimizerdata`
--

DROP TABLE IF EXISTS `optimizerdata`;
CREATE TABLE IF NOT EXISTS `optimizerdata` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(255) NOT NULL DEFAULT '',
  `OBJECT_NAME` varchar(255) NOT NULL DEFAULT '',
  `PROPERTY_NAME` varchar(255) NOT NULL DEFAULT '',
  `KEEP` varchar(255) NOT NULL DEFAULT '',
  `OPTIMIZE` varchar(255) NOT NULL DEFAULT '',
  `LOG` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patterns`
--

DROP TABLE IF EXISTS `patterns`;
CREATE TABLE IF NOT EXISTS `patterns` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PATTERN` text DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `SCRIPT` text DEFAULT NULL,
  `LOG` text DEFAULT NULL,
  `TIME_LIMIT` int(245) NOT NULL DEFAULT 0,
  `EXECUTED` int(10) NOT NULL DEFAULT 0,
  `IS_CONTEXT` int(3) NOT NULL DEFAULT 0,
  `IS_COMMON_CONTEXT` int(3) NOT NULL DEFAULT 0,
  `MATCHED_CONTEXT_ID` int(10) NOT NULL DEFAULT 0,
  `TIMEOUT` int(10) NOT NULL DEFAULT 0,
  `TIMEOUT_CONTEXT_ID` int(10) NOT NULL DEFAULT 0,
  `TIMEOUT_SCRIPT` text DEFAULT NULL,
  `PARENT_ID` int(10) NOT NULL DEFAULT 0,
  `IS_LAST` int(3) NOT NULL DEFAULT 0,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `SCRIPT_EXIT` text DEFAULT NULL,
  `SKIPSYSTEM` int(3) NOT NULL DEFAULT 0,
  `ONETIME` int(3) NOT NULL DEFAULT 0,
  `PATTERN_TYPE` int(3) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `CONDITION` int(3) NOT NULL DEFAULT 0,
  `CONDITION_VALUE` varchar(255) NOT NULL DEFAULT '',
  `LATEST_VALUE` varchar(255) NOT NULL DEFAULT '',
  `ACTIVE_STATE` int(3) NOT NULL DEFAULT 0,
  `USEMORPHY` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patterns`
--

INSERT INTO `patterns` (`ID`, `TITLE`, `PATTERN`, `SCRIPT_ID`, `SCRIPT`, `LOG`, `TIME_LIMIT`, `EXECUTED`, `IS_CONTEXT`, `IS_COMMON_CONTEXT`, `MATCHED_CONTEXT_ID`, `TIMEOUT`, `TIMEOUT_CONTEXT_ID`, `TIMEOUT_SCRIPT`, `PARENT_ID`, `IS_LAST`, `PRIORITY`, `SCRIPT_EXIT`, `SKIPSYSTEM`, `ONETIME`, `PATTERN_TYPE`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `CONDITION`, `CONDITION_VALUE`, `LATEST_VALUE`, `ACTIVE_STATE`, `USEMORPHY`) VALUES
(9, '(start|play) music', '', 0, 'runScript(\'playFavoriteMusic\');', '', 0, 1409904443, 0, 0, 0, 0, 0, '', 0, 0, 0, NULL, 0, 0, 0, '', '', 0, '', '', 0, 0),
(8, 'report system state', '', 21, '', '2014-09-05 12:07:19 Pattern matched\n', 0, 1409908039, 0, 0, 0, 0, 0, '', 0, 0, 0, NULL, 0, 0, 0, '', '', 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `performance_log`
--

DROP TABLE IF EXISTS `performance_log`;
CREATE TABLE IF NOT EXISTS `performance_log` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OPERATION` varchar(255) NOT NULL DEFAULT '',
  `COUNTER` int(10) NOT NULL DEFAULT 0,
  `TIMEUSED` float NOT NULL DEFAULT 0,
  `SOURCE` char(10) NOT NULL DEFAULT '',
  `ADDED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phistory`
--

DROP TABLE IF EXISTS `phistory`;
CREATE TABLE IF NOT EXISTS `phistory` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ADDED` datetime DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `SOURCE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `VALUE_ID` (`VALUE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phistory_queue`
--

DROP TABLE IF EXISTS `phistory_queue`;
CREATE TABLE IF NOT EXISTS `phistory_queue` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VALUE` text NOT NULL,
  `OLD_VALUE` text NOT NULL,
  `KEEP_HISTORY` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ADDED` datetime DEFAULT NULL,
  `SOURCE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=40913 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinghosts`
--

DROP TABLE IF EXISTS `pinghosts`;
CREATE TABLE IF NOT EXISTS `pinghosts` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `HOSTNAME` varchar(255) NOT NULL DEFAULT '',
  `TYPE` int(30) NOT NULL DEFAULT 0,
  `STATUS` int(3) NOT NULL DEFAULT 0,
  `SEARCH_WORD` varchar(255) NOT NULL DEFAULT '',
  `CHECK_LATEST` datetime DEFAULT NULL,
  `CHECK_NEXT` datetime DEFAULT NULL,
  `SCRIPT_ID_ONLINE` int(10) NOT NULL DEFAULT 0,
  `CODE_ONLINE` text DEFAULT NULL,
  `SCRIPT_ID_OFFLINE` int(10) NOT NULL DEFAULT 0,
  `CODE_OFFLINE` text DEFAULT NULL,
  `OFFLINE_INTERVAL` int(10) NOT NULL DEFAULT 0,
  `ONLINE_INTERVAL` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LOG` text DEFAULT NULL,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `COUNTER_CURRENT` int(10) NOT NULL DEFAULT 0,
  `COUNTER_REQUIRED` int(10) NOT NULL DEFAULT 0,
  `STATUS_EXPECTED` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pinghosts`
--

INSERT INTO `pinghosts` (`ID`, `HOSTNAME`, `TYPE`, `STATUS`, `SEARCH_WORD`, `CHECK_LATEST`, `CHECK_NEXT`, `SCRIPT_ID_ONLINE`, `CODE_ONLINE`, `SCRIPT_ID_OFFLINE`, `CODE_OFFLINE`, `OFFLINE_INTERVAL`, `ONLINE_INTERVAL`, `TITLE`, `LOG`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `COUNTER_CURRENT`, `COUNTER_REQUIRED`, `STATUS_EXPECTED`) VALUES
(8, '8.8.8.8', 0, 1, '', '2022-12-27 20:37:16', '2022-12-27 20:47:16', 0, '', 0, '', 600, 600, 'Internet', '2021-05-18 14:46:17 Host is online\n2021-05-18 12:03:35 Host is offline\n2019-06-25 16:02:52 Host is online\n2019-06-25 15:52:52 Host is offline\n2019-06-24 21:09:25 Host is online\n2019-06-21 11:25:35 Host is offline\n2019-06-20 15:43:38 Host is online\n2019-06-20 15:33:31 Host is offline\n2019-06-20 04:37:35 Host is online\n2019-06-20 04:27:27 Host is offline\n2019-06-19 22:14:05 Host is online\n2019-06-19 22:03:56 Host is offline\n2019-06-19 19:50:47 Host is online\n2019-06-18 00:55:43 Host is offline\n2019-06-18 00:44:59 Host is online\n2019-06-17 23:32:15 Host is offline\n2019-06-17 23:21:35 Host is online\n2019-06-17 23:11:29 Host is offline\n2019-06-17 22:50:38 Host is online\n2019-06-17 15:22:19 Host is offline\n2019-06-17 15:11:55 Host is online\n2019-06-17 05:48:27 Host is offline\n2019-06-17 05:37:43 Host is online\n2019-06-17 01:27:37 Host is offline\n2019-06-17 01:17:12 Host is online\n2019-06-16 08:01:09 Host is offline\n2019-06-16 07:50:28 Host is online\n2019-06-15 03:40:22 Host is offline\n2019-06-15 03:29:57 Host is online\n2019-06-15 02:16:54 Host is offline', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `IMAGE` varchar(255) NOT NULL DEFAULT '',
  `NEED_ZOOM` int(3) NOT NULL DEFAULT 0,
  `AUTO_ZOOM` int(3) NOT NULL DEFAULT 0,
  `CUSTOM_CSS` text DEFAULT NULL,
  `CUSTOM_JAVASCRIPT` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_components`
--

DROP TABLE IF EXISTS `plan_components`;
CREATE TABLE IF NOT EXISTS `plan_components` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `COMPONENT_NAME` varchar(255) NOT NULL DEFAULT '',
  `REPLACE_NAME` varchar(255) NOT NULL DEFAULT '',
  `ACTION_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `ACTION_METHOD` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `MENU_ITEM_ID` int(10) NOT NULL DEFAULT 0,
  `HOMEPAGE_ID` int(10) NOT NULL DEFAULT 0,
  `EXT_URL` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_components_data`
--

DROP TABLE IF EXISTS `plan_components_data`;
CREATE TABLE IF NOT EXISTS `plan_components_data` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COMPONENT_ID` int(10) NOT NULL DEFAULT 0,
  `PROPERTY_NAME` varchar(255) NOT NULL DEFAULT '',
  `PROPERTY_VALUE` varchar(255) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_states`
--

DROP TABLE IF EXISTS `plan_states`;
CREATE TABLE IF NOT EXISTS `plan_states` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PLAN_ID` int(10) NOT NULL DEFAULT 0,
  `ITEM` varchar(255) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `CONDITION` int(3) NOT NULL DEFAULT 0,
  `CONDITION_VALUE` varchar(255) NOT NULL DEFAULT '',
  `CONDITION_ADVANCED` text DEFAULT NULL,
  `CSS_CLASS` varchar(255) NOT NULL DEFAULT '',
  `CSS_CLASS_INVERSE` varchar(255) NOT NULL DEFAULT '',
  `ACTION_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `ACTION_METHOD` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `MENU_ITEM_ID` int(10) NOT NULL DEFAULT 0,
  `HOMEPAGE_ID` int(10) NOT NULL DEFAULT 0,
  `EXT_URL` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
CREATE TABLE IF NOT EXISTS `plugins` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `MODULE_NAME` varchar(255) NOT NULL DEFAULT '',
  `REPOSITORY_URL` char(255) NOT NULL DEFAULT '',
  `AUTHOR` varchar(255) NOT NULL DEFAULT '',
  `SUPPORT_URL` char(255) NOT NULL DEFAULT '',
  `DESCRIPTION_RU` text DEFAULT NULL,
  `DESCRIPTION_EN` text DEFAULT NULL,
  `CURRENT_VERSION` varchar(255) NOT NULL DEFAULT '',
  `LATEST_VERSION` varchar(255) NOT NULL DEFAULT '',
  `IS_INSTALLED` int(3) NOT NULL DEFAULT 0,
  `WHATSNEW` text DEFAULT NULL,
  `LATEST_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`ID`, `TITLE`, `MODULE_NAME`, `REPOSITORY_URL`, `AUTHOR`, `SUPPORT_URL`, `DESCRIPTION_RU`, `DESCRIPTION_EN`, `CURRENT_VERSION`, `LATEST_VERSION`, `IS_INSTALLED`, `WHATSNEW`, `LATEST_UPDATE`) VALUES
(3, '', 'rhvoice', '', '', '', '', '', '2020-05-18 17:12:15', '', 1, '', '2022-12-27 20:31:27'),
(4, '', 'charts', '', '', '', NULL, NULL, '2022-12-07 20:49:42', '', 1, NULL, '2022-12-27 20:31:29'),
(5, '', 'optimizer', '', '', '', NULL, NULL, '2021-12-10 12:38:06', '', 1, NULL, '2022-12-27 20:31:39'),
(8, '', 'shoutcast', '', '', '', NULL, NULL, '2019-11-12 12:44:40', '', 1, NULL, '2022-12-27 20:31:36'),
(9, '', 'app_openweather', '', '', '', NULL, NULL, '2020-09-13 14:47:03', '', 1, NULL, '2022-12-27 20:31:35'),
(10, '', 'mqtt', '', '', '', NULL, NULL, '2022-09-08 16:34:53', '', 1, NULL, '2022-12-27 20:31:38'),
(12, '', 'scheduler', '', '', '', NULL, NULL, '2019-01-03 17:59:09', '', 1, NULL, '2022-12-27 20:31:41'),
(16, '', 'homekit', '', '', '', NULL, NULL, '2019-12-30 22:46:16', '', 1, NULL, '2022-12-27 20:31:37'),
(17, '', 'webvars', '', '', '', NULL, NULL, '2021-03-02 21:14:58', '', 1, NULL, '2022-12-27 20:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `COMMENTS` varchar(255) NOT NULL DEFAULT '',
  `CATEGORY_ID` int(10) NOT NULL DEFAULT 0,
  `INSTOCK` int(3) NOT NULL DEFAULT 0,
  `IMAGE` varchar(70) NOT NULL DEFAULT '',
  `WILL_EXPIRE` int(3) NOT NULL DEFAULT 0,
  `EXPIRE_DATE` date DEFAULT NULL,
  `EXPIRE_DEFAULT` int(10) NOT NULL DEFAULT 0,
  `UPDATED` datetime DEFAULT NULL,
  `QTY` int(10) NOT NULL DEFAULT 0,
  `MIN_QTY` int(10) NOT NULL DEFAULT 0,
  `DETAILS` text DEFAULT NULL,
  `DEFAULT_PRICE` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `PARENT_ID` int(10) NOT NULL DEFAULT 0,
  `SUB_LIST` text DEFAULT NULL,
  `PARENT_LIST` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`ID`, `TITLE`, `PRIORITY`, `PARENT_ID`, `SUB_LIST`, `PARENT_LIST`) VALUES
(1, '<#LANG_APP_PRODUCTS#>', 0, 0, '2,3,4,5,7,8', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_codes`
--

DROP TABLE IF EXISTS `product_codes`;
CREATE TABLE IF NOT EXISTS `product_codes` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `CODE` varchar(255) NOT NULL DEFAULT '',
  `PRODUCT_ID` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_codes`
--

INSERT INTO `product_codes` (`ID`, `TITLE`, `CODE`, `PRODUCT_ID`) VALUES
(33, 'ХЛЕБ ', '4811002027133', 1),
(34, 'МОЛОЧНАЯ КАША ДЛЯ ДЕТСКОГО ПИТАНИЯ ', '4606272002061', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_log`
--

DROP TABLE IF EXISTS `product_log`;
CREATE TABLE IF NOT EXISTS `product_log` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PRODUCT_ID` int(10) NOT NULL DEFAULT 0,
  `CODE_ID` int(10) NOT NULL DEFAULT 0,
  `ACTION` char(10) NOT NULL DEFAULT '',
  `UPDATED` datetime DEFAULT NULL,
  `QTY` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_categories`
--

DROP TABLE IF EXISTS `prod_categories`;
CREATE TABLE IF NOT EXISTS `prod_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_modules`
--

DROP TABLE IF EXISTS `project_modules`;
CREATE TABLE IF NOT EXISTS `project_modules` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `CATEGORY` varchar(50) NOT NULL DEFAULT '',
  `PARENT_NAME` varchar(50) NOT NULL DEFAULT '',
  `DATA` text DEFAULT NULL,
  `HIDDEN` int(3) NOT NULL DEFAULT 0,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `ADDED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project_modules`
--

INSERT INTO `project_modules` (`ID`, `NAME`, `TITLE`, `CATEGORY`, `PARENT_NAME`, `DATA`, `HIDDEN`, `PRIORITY`, `ADDED`) VALUES
(1, 'control_modules', '<#LANG_MODULE_MODULES#>', '<#LANG_SECTION_SYSTEM#>', '', '', 0, 0, '2015-01-29 08:24:27'),
(67, 'scripts', '<#LANG_MODULE_SCRIPTS#>', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2010-09-13 15:12:16'),
(4, 'control_access', 'Control Access', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2011-09-29 18:16:01'),
(7, 'master', '<#LANG_MODULE_MASTER_LOGIN#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2014-10-30 11:57:40'),
(70, 'pinghosts', '<#LANG_MODULE_PINGHOSTS#>', '<#LANG_SECTION_DEVICES#>', '', '', 0, 0, '2011-01-05 22:02:57'),
(20, 'saverestore', '<#LANG_MODULE_SAVERESTORE#>', '<#LANG_SECTION_SYSTEM#>', '', 'a:7:{s:17:\"MASTER_UPDATE_URL\";s:59:\"https://github.com/sergejey/majordomo/archive/master.tar.gz\";s:17:\"LATEST_UPDATED_ID\";s:40:\"b8d03ab6e22461678b85e1df66a02325b04e6ff9\";s:11:\"UPDATE_AUTO\";s:1:\"0\";s:17:\"UPDATE_AUTO_DELAY\";s:2:\"14\";s:16:\"UPDATE_AUTO_TIME\";s:1:\"0\";s:19:\"UPDATE_AUTO_PLUGINS\";s:1:\"0\";s:18:\"LATEST_CURR_BRANCH\";s:6:\"MASTER\";}', 0, 0, '2009-02-07 11:35:05'),
(134, 'actions_log', '<#LANG_MODULE_ACTIONS_LOG#>', '<#LANG_SECTION_SYSTEM#>', '', NULL, 0, 0, '2019-09-09 21:37:40'),
(21, 'userlog', '<#LANG_MODULE_USERLOG#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2009-02-07 11:45:52'),
(22, 'skins', '<#LANG_MODULE_SKINS#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2009-02-07 12:02:54'),
(23, 'settings', '<#LANG_MODULE_SETTINGS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2009-02-07 12:05:40'),
(24, 'dateselect', 'Date Selector', 'System', '', '', 1, 0, '2009-02-07 12:47:32'),
(25, 'thumb', '<#LANG_MODULE_THUMB#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2009-02-07 12:48:32'),
(73, 'app_player', '<#LANG_APP_PLAYER#>', '<#LANG_SECTION_APPLICATIONS#>', '', '', 0, 0, '2011-05-03 11:02:57'),
(28, 'dashboard', 'Dashboard', 'CMS', '', 'a:5:{s:12:\"CPANEL_STATS\";i:0;s:15:\"CPANEL_USERNAME\";s:0:\"\";s:15:\"CPANEL_PASSWORD\";s:0:\"\";s:13:\"CPANEL_DOMAIN\";s:0:\"\";s:10:\"CPANEL_URL\";s:0:\"\";}', 1, 0, '2009-02-23 10:15:23'),
(29, 'events', '<#LANG_MODULE_EVENTS#>', '<#LANG_SECTION_SYSTEM#>', '', '', 0, 0, '2017-12-16 09:57:18'),
(30, 'users', '<#LANG_MODULE_USERS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2009-03-27 13:08:07'),
(31, 'terminals', '<#LANG_MODULE_TERMINALS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2009-03-27 13:10:00'),
(34, 'commands', '<#LANG_MODULE_CONTROL_MENU#>', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2009-04-11 03:14:03'),
(37, 'classes', '<#LANG_MODULE_OBJECTS#>', '<#LANG_SECTION_OBJECTS#>', '', 'a:3:{s:12:\"DEFAULT_VIEW\";s:0:\"\";s:15:\"FILTER_CLASS_ID\";i:25;s:18:\"FILTER_LOCATION_ID\";i:0;}', 0, 0, '2009-05-22 10:09:27'),
(38, 'history', '<#LANG_MODULE_OBJECTS_HISTORY#>', '<#LANG_SECTION_OBJECTS#>', '', '', 1, 0, '2009-05-22 10:09:51'),
(39, 'locations', '<#LANG_MODULE_LOCATIONS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2009-05-22 10:11:01'),
(40, 'methods', '<#LANG_MODULE_METHODS#>', '<#LANG_SECTION_OBJECTS#>', '', '', 1, 0, '2009-05-22 10:11:23'),
(41, 'properties', '<#LANG_MODULE_PROPERTIES#>', '<#LANG_SECTION_OBJECTS#>', '', '', 1, 0, '2009-05-22 10:11:47'),
(42, 'objects', '<#LANG_MODULE_OBJECT_INSTANCES#>', '<#LANG_SECTION_OBJECTS#>', '', '', 1, 0, '2009-05-22 10:12:04'),
(85, 'pvalues', '<#LANG_MODULE_PVALUES#>', '<#LANG_SECTION_OBJECTS#>', '', '', 1, 0, '2012-11-16 15:04:26'),
(44, 'shoutbox', '<#LANG_MODULE_SHOUTBOX#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2009-07-29 13:53:13'),
(45, 'shoutrooms', '<#LANG_MODULE_SHOUTROOMS#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2009-07-29 13:53:28'),
(46, 'jobs', '<#LANG_MODULE_JOBS#>', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2014-10-30 11:57:40'),
(117, 'app_openweather', '<#LANG_APP_OPENWEATHER#>', '<#LANG_SECTION_APPLICATIONS#>', '', 'a:4:{s:11:\"module_mode\";s:1:\"0\";s:8:\"ow_round\";s:1:\"1\";s:11:\"debug_level\";s:1:\"0\";s:13:\"pictures_from\";s:0:\"\";}', 0, 0, '2016-11-16 15:53:46'),
(81, 'scenes', '<#LANG_MODULE_SCENES#>', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2012-06-25 09:34:26'),
(61, 'app_mediabrowser', '<#LANG_APP_MEDIA_BROWSER#>', '<#LANG_SECTION_APPLICATIONS#>', '', '', 0, 0, '2010-08-31 09:09:33'),
(118, 'mqtt', '<#LANG_MODULE_MQTT#>', '<#LANG_SECTION_DEVICES#>', '', 'a:9:{s:9:\"MQTT_HOST\";s:9:\"localhost\";s:9:\"MQTT_PORT\";i:1883;s:10:\"MQTT_QUERY\";s:37:\"$SYS/broker/uptime, homebridge/from/#\";s:11:\"MQTT_CLIENT\";s:14:\"MajorDoMo MQTT\";s:13:\"MQTT_USERNAME\";s:0:\"\";s:13:\"MQTT_PASSWORD\";s:0:\"\";s:9:\"MQTT_AUTH\";i:0;s:9:\"TREE_VIEW\";i:1;s:17:\"MQTT_WRITE_METHOD\";i:2;}', 0, 0, '2016-11-16 16:04:15'),
(66, 'layouts', '<#LANG_MODULE_LAYOUTS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2010-09-13 15:03:49'),
(82, 'webvars', '<#LANG_MODULE_WEBVARS#>', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2012-11-06 08:49:14'),
(77, 'patterns', '<#LANG_MODULE_PATTERNS#>', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2011-12-13 14:36:03'),
(83, 'xray', 'X-Ray', '<#LANG_SECTION_SYSTEM#>', '', '', 0, 0, '2012-11-16 14:59:57'),
(88, 'security_rules', '<#LANG_MODULE_SECURITY_RULES#>', '<#LANG_SECTION_SETTINGS#>', '', '', 1, 0, '2013-05-18 11:31:37'),
(90, 'connect', '<#LANG_MODULE_CONNECT#>', '<#LANG_SECTION_SYSTEM#>', '', 'a:9:{s:16:\"CONNECT_USERNAME\";s:0:\"\";s:16:\"CONNECT_PASSWORD\";s:0:\"\";s:12:\"CONNECT_SYNC\";i:0;s:9:\"SEND_MENU\";i:1;s:12:\"SEND_OBJECTS\";i:0;s:12:\"SEND_SCRIPTS\";i:0;s:13:\"SEND_PATTERNS\";i:0;s:14:\"CONNECT_BACKUP\";i:0;s:19:\"CONNECT_BACKUP_HOUR\";i:1;}', 0, 0, '2013-08-09 10:02:04'),
(93, 'market', '<#LANG_MODULE_MARKET#>', '<#LANG_SECTION_SYSTEM#>', '', '', 0, 0, '2014-01-25 14:04:20'),
(97, 'blockly_code', 'Blockly code', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2014-09-03 09:28:23'),
(98, 'myblocks', '<#LANG_MODULE_MYBLOCKS#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2014-10-30 11:57:40'),
(99, 'soundfiles', '<#LANG_MODULE_SOUNDFILES#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2014-10-30 11:57:41'),
(100, 'textfiles', '<#LANG_MODULE_TEXTFILES#>', '<#LANG_SECTION_SETTINGS#>', '', '', 0, 0, '2014-10-30 11:57:41'),
(101, 'linkedobject', 'LinkedObject', '<#LANG_SECTION_SYSTEM#>', '', '', 1, 0, '2015-01-29 08:24:25'),
(102, 'system_errors', '<#LANG_MODULE_SYSTEM_ERRORS#>', '<#LANG_SECTION_SYSTEM#>', '', '', 0, 0, '2015-01-29 08:24:26'),
(110, 'rhvoice', 'RHVoice', '<#LANG_SECTION_APPLICATIONS#>', '', 'a:3:{s:5:\"VOICE\";s:4:\"Anna\";s:7:\"USE_SPD\";N;s:9:\"USE_CACHE\";s:1:\"1\";}', 0, 0, '2016-03-18 12:25:26'),
(111, 'charts', 'Графики', '<#LANG_SECTION_OBJECTS#>', '', '', 0, 0, '2022-12-27 17:45:52'),
(112, 'optimizer', 'Optimizer', '<#LANG_SECTION_SYSTEM#>', '', 'a:4:{s:11:\"START_DAILY\";i:1;s:10:\"START_TIME\";i:3;s:13:\"AUTO_OPTIMIZE\";i:10000;s:11:\"KEEP_CACHED\";i:30;}', 0, 0, '2016-03-28 12:28:22'),
(120, 'scheduler', 'Планировщик', '<#LANG_SECTION_APPLICATIONS#>', '', NULL, 0, 0, '2022-12-27 17:45:52'),
(121, 'devices', 'Простые устройства', '<#LANG_SECTION_DEVICES#>', '', NULL, 0, 0, '2022-12-27 17:45:52'),
(128, 'shoutcast', 'SHOUTCast', '<#LANG_SECTION_APPLICATIONS#>', '', 'a:5:{s:7:\"API_URL\";N;s:7:\"API_KEY\";s:0:\"\";s:12:\"API_USERNAME\";N;s:12:\"API_PASSWORD\";N;s:12:\"API_TERMINAL\";s:4:\"MAIN\";}', 0, 0, '2018-07-04 21:47:23'),
(132, 'plans', '<#LANG_MODULE_PLANS#>', '<#LANG_SECTION_OBJECTS#>', '', NULL, 0, 0, '2019-02-28 12:04:11'),
(133, 'homekit', 'HomeKit', '<#LANG_SECTION_DEVICES#>', '', NULL, 0, 0, '2019-02-28 12:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(10) NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `DESCRIPTION` text DEFAULT NULL,
  `OBJECT_ID` int(10) NOT NULL DEFAULT 0,
  `KEEP_HISTORY` int(10) NOT NULL DEFAULT 0,
  `ONCHANGE` varchar(255) NOT NULL DEFAULT '',
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `DATA_KEY` int(3) NOT NULL DEFAULT 0,
  `DATA_TYPE` int(3) NOT NULL DEFAULT 0,
  `VALIDATION_TYPE` int(3) NOT NULL DEFAULT 0,
  `VALIDATION_NUM_MIN` varchar(20) NOT NULL DEFAULT '',
  `VALIDATION_NUM_MAX` varchar(20) NOT NULL DEFAULT '',
  `VALIDATION_LIST` varchar(255) NOT NULL DEFAULT '',
  `VALIDATION_CODE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLASS_ID` (`CLASS_ID`),
  KEY `OBJECT_ID` (`OBJECT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6030 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`ID`, `CLASS_ID`, `TITLE`, `DESCRIPTION`, `OBJECT_ID`, `KEEP_HISTORY`, `ONCHANGE`, `SYSTEM`, `DATA_KEY`, `DATA_TYPE`, `VALIDATION_TYPE`, `VALIDATION_NUM_MIN`, `VALIDATION_NUM_MAX`, `VALIDATION_LIST`, `VALIDATION_CODE`) VALUES
(1, 1, 'lastTimePressed', 'когда нажималась в последний раз', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(8, 5, 'СтепеньКрасноты', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(10, 10, 'checked', 'время последней проверки', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(17, 0, 'testProp', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(12, 7, 'time', 'текущее время', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(18, 10, 'minMsgLevel', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(20, 0, 'weatherFull', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(21, 0, 'AlarmTime', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(22, 0, 'textBoxTest', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(23, 0, '1w_temp', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(41, 21, 'stateDetails', 'details for the state', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(42, 21, 'stateColor', 'green / yellow / red', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(44, 0, 'Econom', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(45, 0, 'securityMode', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(46, 0, 'nobodyHome', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(47, 0, 'WeHaveGuests', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(55, 24, 'active', '', 0, 365, 'modeChanged', '', 0, 0, 0, '', '', '', NULL),
(56, 24, 'title', '', 0, 0, '', '', 1, 0, 0, '', '', '', NULL),
(57, 24, 'updated', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(58, 24, 'updatedTime', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(59, 25, 'LatestActivity', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(60, 25, 'LatestActivityTime', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(61, 25, 'SomebodyHere', 'Somebody in the room', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(62, 25, 'Temperature', 'Temperature', 0, 365, '', '', 0, 0, 0, '', '', '', NULL),
(76, 0, 'stateTitle', NULL, 17, 0, '', '', 0, 0, 0, '', '', '', NULL),
(77, 0, 'stateTitle', NULL, 18, 0, '', '', 0, 0, 0, '', '', '', NULL),
(78, 0, 'stateTitle', NULL, 16, 0, '', '', 0, 0, 0, '', '', '', NULL),
(83, 0, 'volumeLevel', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(98, 0, 'somebodyHome', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(101, 0, 'timeNow', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(102, 0, 'HomeStatus', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(103, 0, 'isDark', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(104, 0, 'SunSetTime', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(105, 0, 'SunRiseTime', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(106, 0, 'somebodyHomeText', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(108, 0, 'wunderHost', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(110, 0, 'weatherTomorrow', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(111, 0, 'weatherTomorrowweatherToday', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(112, 0, 'weatherToday', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(113, 0, 'connect_manualRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(114, 0, 'clockChimeEnabled', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(153, 0, 'UpdateVersion', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(127, 25, 'Humidity', 'Humidity', 0, 365, '', '', 0, 0, 0, '', '', '', NULL),
(132, 25, 'Title', '', 0, 0, '', '', 1, 0, 0, '', '', '', NULL),
(134, 32, 'atHome', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(135, 32, 'Coordinates', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(136, 32, 'CoordinatesUpdated', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(137, 32, 'CoordinatesUpdatedTimestamp', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(138, 32, 'fullName', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(139, 32, 'isMoving', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(140, 32, 'seenAt', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(143, 0, 'lastNewsRead', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(144, 0, 'NoolightCommandSend', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(145, 0, 'AlreadyPlayedMusic', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(148, 0, 'lastSayTime', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(149, 0, 'uptime', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(150, 0, 'started_time', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(155, 10, 'tempOutside', '', 0, 365, '', '', 0, 0, 0, '', '', '', NULL),
(156, 0, 'WebCamService', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(157, 0, 'SpaceProblems', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(158, 0, 'SpaceProblems_Details', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(159, 0, 'LatestNooliteCommand', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(160, 0, 'WebCamMotion', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(161, 0, 'WebCamMotionAuto', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(261, 0, 'NightModeEnd', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(260, 0, 'NightModeStart', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(259, 0, 'Serial', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(262, 0, 'ConnectService', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(263, 0, 'economTurnOff', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(264, 0, 'DemoWeather', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(265, 0, 'DemoMusic', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(266, 0, 'DemoPower', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(267, 0, 'DemoAsk', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(268, 0, 'lastSayMessage', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(376, 39, 'status', 'Статус', 0, 365, 'statusUpdated', '', 1, 0, 0, '', '', '', NULL),
(377, 39, 'alive', 'Alive', 0, 365, '', '', 0, 0, 0, '', '', '', NULL),
(378, 39, 'linkedRoom', 'LinkedRoom', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(379, 39, 'updated', 'Updated Timestamp', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(380, 39, 'updatedText', 'Updated Time (text)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(381, 40, 'groupEco', 'Выключать в режиме экономии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(382, 40, 'groupSunrise', 'Выключать с рассветом', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(383, 42, 'level', 'Current brightness level', 0, 0, 'levelUpdated', '', 1, 0, 0, '', '', '', NULL),
(384, 44, 'isActivity', 'Изменение означает активность в помещении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(385, 46, 'value', 'Current Sensor Value', 0, 365, 'valueUpdated', '', 1, 0, 0, '', '', '', NULL),
(386, 46, 'minValue', 'Нижний порог', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(387, 46, 'maxValue', 'Верхний порог', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(388, 46, 'notify', 'Уведомлять при выходе за порог', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(389, 46, 'normalValue', 'Значение в нормальных пределах', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(390, 0, 'WSClientsTotal', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(395, 55, 'from_response', 'homebridge/from/response', 0, 0, 'dataUpdated', '', 0, 0, 0, '', '', '', NULL),
(396, 55, 'to_add', 'homebridge/to/add', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(397, 55, 'to_add_service', 'homebridge/to/add/service', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(398, 55, 'to_remove', 'homebridge/to/remove', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(399, 55, 'to_remove_service', 'homebridge/to/remove/service', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(400, 55, 'to_get', 'homebridge/to/get', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(401, 55, 'to_set', 'homebridge/to/set', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(402, 55, 'from_get', 'homebridge/from/get', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(403, 55, 'from_set', 'homebridge/from/set', 0, 0, 'dataUpdated', '', 0, 0, 0, '', '', '', NULL),
(404, 55, 'to_set_reachability', 'homebridge/to/set/reachability', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(405, 55, 'to_set_accessoryinformation', 'homebridge/to/set/accessoryinformation', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(406, 55, 'from_identify', 'homebridge/from/identify', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(408, 0, 'allOffGroup', NULL, 74, 0, '', '', 0, 0, 0, '', '', '', NULL),
(409, 0, 'greetingOnGroup', NULL, 74, 0, '', '', 0, 0, 0, '', '', '', NULL),
(411, 0, 'allOffGroup', NULL, 75, 0, '', '', 0, 0, 0, '', '', '', NULL),
(412, 0, 'greetingOnGroup', NULL, 75, 0, '', '', 0, 0, 0, '', '', '', NULL),
(414, 0, 'allOffGroup', NULL, 76, 0, '', '', 0, 0, 0, '', '', '', NULL),
(415, 0, 'greetingOnGroup', NULL, 76, 0, '', '', 0, 0, 0, '', '', '', NULL),
(416, 55, 'mode', '', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(423, 0, 'updatedTime', NULL, 80, 0, '', '', 0, 0, 0, '', '', '', NULL),
(426, 0, 'statusText', NULL, 51, 0, '', '', 0, 0, 0, '', '', '', NULL),
(419, 0, 'updatedTime', NULL, 79, 0, '', '', 0, 0, 0, '', '', '', NULL),
(427, 0, 'aliveTimeOut', NULL, 51, 0, '', '', 0, 0, 0, '', '', '', NULL),
(428, 0, 'motionDetected', NULL, 51, 0, '', '', 0, 0, 0, '', '', '', NULL),
(430, 0, 'updatedTimestamp', NULL, 51, 0, '', '', 0, 0, 0, '', '', '', NULL),
(446, 43, 'ignoreModeChange', 'Игнорировать движения в режиме \"Никого нет\"', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(447, 39, 'aliveTimeout', 'Допустимое время отсутствия данных (часов)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(448, 57, 'color', 'Current color', 0, 0, 'colorUpdated', '', 1, 0, 0, '', '', '', NULL),
(449, 57, 'colorSaved', 'Saved color', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(450, 43, 'ignoreNobodysHome', 'Игнорировать события от устройства, когда никого нет дома', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(451, 44, 'ncno', 'Тип устройства/сенсора', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(452, 60, 'unit', 'Единица измерения', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(453, 60, 'value', 'Data Value', 0, 365, 'valueUpdated', '', 1, 0, 0, '', '', '', NULL),
(454, 46, 'mainSensor', 'Основной сенсор помещения', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(455, 61, 'unit', 'Единица измерения', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(458, 25, 'IdleDelay', 'Время активности (секунд)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(459, 40, 'groupEcoOn', 'Включать при выходе из режима экономии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(460, 40, 'isActivity', 'Изменение означает активность в помещении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(461, 40, 'loadType', 'Тип устройства', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(462, 62, 'relay_status', 'Статус реле', 0, 365, '', '', 1, 0, 0, '', '', '', NULL),
(463, 62, 'value', 'Текущая температура', 0, 365, 'valueUpdated', '', 1, 0, 0, '', '', '', NULL),
(464, 62, 'currentTargetValue', 'Целевая температура', 0, 0, '', '', 1, 0, 0, '', '', '', NULL),
(465, 62, 'normalTargetValue', 'Обычная целевая температура', 0, 0, 'valueUpdated', '', 0, 0, 0, '', '', '', NULL),
(466, 62, 'ecoTargetValue', 'ECO целевая температура', 0, 0, 'valueUpdated', '', 0, 0, 0, '', '', '', NULL),
(467, 62, 'threshold', 'Порог срабатывания термостата (0.25 по-умолчанию)', 0, 0, 'valueUpdated', '', 0, 0, 0, '', '', '', NULL),
(468, 62, 'ncno', 'Тип устройства/сенсора', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(469, 63, 'streamURL', 'URL видео-потока (LQ)', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(470, 63, 'streamURL_HQ', 'URL видео-потока (HQ)', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(471, 63, 'cameraUsername', 'Имя пользователя', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(472, 63, 'cameraPassword', 'Пароль', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(473, 63, 'snapshotURL', 'URL статического снимка', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(474, 63, 'snapshot', 'Снимок', 0, 365, '', '', 0, 5, 0, '', '', '', NULL),
(475, 63, 'previewHTML', 'Preview HTML', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(483, 63, 'streamTransport', 'Транспорт потока', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(484, 63, 'previewType', 'Предпросмотр', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(485, 63, 'clickAction', 'Действие по нажатию на изображение', 0, 0, 'updatePreview', '', 0, 0, 0, '', '', '', NULL),
(486, 63, 'snapshotPreviewURL', 'Snapshot Preview URL', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(487, 63, 'activeHTML', 'Active HTML', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(488, 40, 'icon', 'Изображение', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(489, 42, 'levelWork', 'Brightness level (work)', 0, 0, 'levelWorkUpdated', '', 0, 0, 0, '', '', '', NULL),
(490, 42, 'minWork', 'Мин. уровень (рабочий)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(491, 42, 'maxWork', 'Макс. уровень (рабочий)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(492, 43, 'timeout', 'Время активности (секунд)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(493, 63, 'series', 'Снимок', 0, 30, '', '', 0, 5, 0, '', '', '', NULL),
(494, 60, 'valueWork', 'Work Value', 0, 0, 'valueWorkUpdated', '', 0, 0, 0, '', '', '', NULL),
(495, 60, 'valueHour', 'Hour Value', 0, 365, '', '', 0, 0, 0, '', '', '', NULL),
(496, 60, 'valueDay', 'Day Value', 0, 1825, '', '', 0, 0, 0, '', '', '', NULL),
(497, 60, 'valueMonth', 'Month Value', 0, 1825, '', '', 0, 0, 0, '', '', '', NULL),
(498, 60, 'conversion', 'Conversion coefficient (work-to-data)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(499, 45, 'icon', 'Изображение', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(500, 64, 'unit', 'Единица измерения', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(501, 56, 'loadStatusTimeout', 'Таймер изменения статуса нагрузки', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(503, 46, 'direction', 'Direction of changes', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(504, 46, 'directionTimeout', 'Интервал времени расчета направления изменений (сек)', 0, 0, 'valueUpdated', '', 0, 0, 0, '', '', '', NULL),
(514, 62, 'disabled', 'Disabled', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(515, 57, 'brightness', 'Current brightness', 0, 0, 'colorUpdated', '', 0, 0, 0, '', '', '', NULL),
(516, 44, 'notify_status', 'Уведомлять при смене статуса', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(517, 44, 'notify_nc', 'Напоминать об открытом состоянии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(518, 0, 'LatestUpdateId', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(519, 0, 'LatestUpdateTimestamp', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2203, 0, 'volumeMediaLevel', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2204, 0, 'DayOfMonthNum', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2205, 0, 'DayOfWeekTXT', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2206, 0, 'MonthTXTalt', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2348, 65, 'groupName', 'Group system name', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2349, 63, 'ignoreNobodysHome', 'Игнорировать события от устройства, когда никого нет дома', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(2350, 63, 'timeout', 'Время активности (секунд)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(3266, 40, 'groupSunset', 'Включать с закатом', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(3267, 42, 'levelSaved', 'Latest level saved', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(3268, 42, 'setMaxTurnOn', 'Устанавливать максимальную яркость при включении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(3269, 43, 'resetNobodysHome', 'Сброс статуса \"никого нет дома\" без таймера установки', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(3270, 66, 'data', 'Данные', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4422, 0, 'uptimeText', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4402, 0, 'HideLeftPanelAdmin', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4403, 58, 'notify_eliminated', 'Уведомлять каждую минуту до восстановления статуса', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4404, 59, 'notify_eliminated', 'Уведомлять каждую минуту до восстановления статуса', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4405, 46, 'notify_eliminated', 'Уведомлять каждую минуту до восстановления статуса', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4457, 43, 'blocked', 'Is blocked', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4458, 44, 'blocked', 'Is blocked', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4459, 67, 'notify_status', 'Уведомлять при смене статуса', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4460, 67, 'notify_nc', 'Напоминать об открытом состоянии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4461, 67, 'openType', 'Тип устройства', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4462, 58, 'blocked', 'Is blocked', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4463, 59, 'blocked', 'Is blocked', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4464, 46, 'blocked', 'Is blocked', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4557, 40, 'groupNight', 'Выключать при входе в ночной режим', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(4665, 45, 'isActivity', 'Изменение означает активность в помещении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5889, 73, 'channel_num', 'Channel number', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5821, 70, 'temperature', NULL, 0, 7, '', '', 0, 0, 0, '', '', '', NULL),
(5888, 73, 'source_num', 'Source number', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5808, 68, 'value', 'Текущая температура', 0, 365, 'valueUpdated', '', 1, 0, 0, '', '', '', NULL),
(5809, 68, 'currentTargetValue', 'Целевая температура', 0, 365, '', '', 1, 0, 0, '', '', '', NULL),
(5810, 68, 'fanSpeed', 'Fan Speed', 0, 0, 'fanSpeedUpdated', '', 0, 0, 0, '', '', '', NULL),
(5811, 68, 'fanSpeedModes', 'Обдув', 0, 0, 'fanSpeedUpdated', '', 0, 0, 0, '', '', '', NULL),
(5812, 68, 'fanSpeedModesHTML', 'FanSpeedModes HTML', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5813, 68, 'thermostat', 'Thermostat', 0, 0, 'thermostatUpdated', '', 0, 0, 0, '', '', '', NULL),
(5814, 68, 'thermostatModes', 'Термостат', 0, 0, 'configUpdated', '', 0, 0, 0, '', '', '', NULL),
(5815, 68, 'thermostatModesHTML', 'ThermostatModes HTML', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5816, 67, 'notify_msg_opening', 'Сообщение при открытии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5817, 67, 'notify_msg_closing', 'Сообщение при закрытии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5818, 67, 'notify_msg_reminder', 'Сообщение при напоминании', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5887, 73, 'volume', 'Volume', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5890, 74, 'volume', 'Volume', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5891, 74, 'source_num', 'Source number', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5892, 74, 'channel_num', 'Channel number', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5893, 68, 'tempStep', 'Шаг изменения температуры', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5894, 44, 'notify_msg_opening', 'Сообщение при открытии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5895, 44, 'notify_msg_closing', 'Сообщение при закрытии', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5896, 44, 'notify_msg_reminder', 'Сообщение при напоминании', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5897, 67, 'isActivity', 'Изменение означает активность в помещении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5898, 67, 'support_level', 'Поддержка уровня открытия', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5899, 67, 'level', 'Current level', 0, 0, 'levelUpdated', '', 0, 0, 0, '', '', '', NULL),
(5900, 67, 'levelSaved', 'Latest level saved', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5901, 60, 'price', 'Price', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5902, 60, 'pulseAmount', 'Pulse amount (optional)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5918, 0, 'lat', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5919, 0, 'lon', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5920, 0, 'LatestUpdateBranch', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5936, 0, 'temp_feels_like', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5937, 0, 'pressure', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5938, 0, 'pressure_mmhg', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5939, 0, 'humidity', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5940, 0, 'dew_point', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5941, 0, 'uvindex', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5942, 0, 'visibility', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5943, 0, 'wind_direction', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5944, 0, 'wind_direction_text', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5945, 0, 'wind_direction_full', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5946, 0, 'wind_speed', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5947, 0, 'condCode', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5948, 0, 'weather_type', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5949, 0, 'image', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5950, 0, 'clouds', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5951, 0, 'rain', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5952, 0, 'snow', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5953, 0, 'data_update', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5954, 0, 'sunrise', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5955, 0, 'sunset', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5956, 0, 'day_length', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5957, 0, 'civil_twilight_begin', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(5958, 0, 'civil_twilight_end', NULL, 591, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6004, 25, 'turnOffLightsOnIdle', 'Выключать освещение в комнате по истечение периода активности', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6005, 39, 'batteryOperated', 'Устройство работает от батареи', 0, 0, 'batteryLevelUpdated', '', 0, 0, 0, '', '', '', NULL),
(6006, 39, 'batteryLevel', 'Уровень заряда батареи', 0, 0, 'batteryLevelUpdated', '', 0, 0, 0, '', '', '', NULL),
(6007, 39, 'batteryWarning', 'Предупреждение о низком заряде батареи', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6008, 42, 'switchLevel', 'Не изменять уровень при переключении', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6009, 58, 'notify_msg_reminder', 'Сообщение при напоминании', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6010, 61, 'periodMinValue', 'Minimum value for period', 0, 365, 'periodMinValueUpdated', '', 0, 0, 0, '', '', '', NULL),
(6011, 61, 'periodTime', 'Period to calculate minimum value (seconds)', 0, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6028, 0, 'cycle_pingRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6029, 0, 'cycle_webvarsRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6026, 0, 'cycle_execsRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6027, 0, 'cycle_schedulerRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6025, 0, 'cycle_mainRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL),
(6024, 0, 'cycle_statesRun', NULL, 7, 0, '', '', 0, 0, 0, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_calls`
--

DROP TABLE IF EXISTS `public_calls`;
CREATE TABLE IF NOT EXISTS `public_calls` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(255) NOT NULL DEFAULT '',
  `PUBLIC_USERNAME` varchar(255) NOT NULL DEFAULT '',
  `PUBLIC_PASSWORD` varchar(255) NOT NULL DEFAULT '',
  `PUBLIC_KEY` varchar(255) NOT NULL DEFAULT '',
  `PROTECTED` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pvalues`
--

DROP TABLE IF EXISTS `pvalues`;
CREATE TABLE IF NOT EXISTS `pvalues` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(10) NOT NULL DEFAULT 0,
  `OBJECT_ID` int(10) NOT NULL DEFAULT 0,
  `VALUE` text NOT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `PROPERTY_NAME` varchar(100) NOT NULL DEFAULT '',
  `LINKED_MODULES` varchar(255) NOT NULL DEFAULT '',
  `SOURCE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `PROPERTY_ID` (`PROPERTY_ID`),
  KEY `OBJECT_ID` (`OBJECT_ID`),
  KEY `PROPERTY_NAME` (`PROPERTY_NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=6099 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pvalues`
--

INSERT INTO `pvalues` (`ID`, `PROPERTY_ID`, `OBJECT_ID`, `VALUE`, `UPDATED`, `PROPERTY_NAME`, `LINKED_MODULES`, `SOURCE`) VALUES
(59, 18, 7, '1', '2020-04-08 08:00:01', 'ThisComputer.minMsgLevel', '', '/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1'),
(60, 17, 7, '-15', '2016-04-05 10:57:51', 'ThisComputer.testProp', '', ''),
(58, 10, 7, '1346415251', '2016-04-05 10:57:51', 'ThisComputer.checked', '', ''),
(24, 12, 6, '2022-12-27 19:47:00', '2022-12-27 19:47:00', 'ClockChime.time', '', ''),
(61, 20, 7, '<b>Сегодня:</b><br />\r\nднем: +8°...+10°, пасмурно, ночью: +0°...-2°, малооблачно, ветер: Ю — 5-7 м/с, давление: 758 мм.рт.ст, влажность: 45%<br />\r\n<br />\r\n<b>Завтра:</b><br />\r\nднем: +5°...+7°, пасмурно, небольшой дождь, ночью: +2°...+4°, пасмурно, без существенных осадков, ветер: З — 7-9 м/с, давление: 756 мм.рт.ст, влажность: 90%<br />\r\n<br />\r\n<br />\r\n', '2016-04-05 10:57:51', 'ThisComputer.weatherFull', '', ''),
(186, 378, 51, 'Hall', '2018-10-30 12:55:09', 'MotionSensor1.LinkedRoom', '', ''),
(80, 155, 7, '16', '2016-04-08 15:00:01', 'ThisComputer.TempOutside', '', ''),
(62, 21, 7, '09:30', '2016-04-05 10:57:51', 'ThisComputer.AlarmTime', 'commands', ''),
(63, 22, 7, '0', '2016-04-05 10:57:51', 'ThisComputer.textBoxTest', 'commands', ''),
(64, 23, 7, '4', '2016-04-05 10:57:51', 'ThisComputer.1w_temp', '', ''),
(81, 44, 7, '0', '2016-04-05 10:57:51', 'ThisComputer.Econom', '', ''),
(82, 45, 7, '0', '2016-04-05 10:57:51', 'ThisComputer.securityMode', '', ''),
(83, 46, 7, '0', '2016-04-05 10:57:51', 'ThisComputer.nobodyHome', '', ''),
(84, 47, 7, '0', '2016-04-05 10:57:51', 'ThisComputer.WeHaveGuests', '', ''),
(93, 42, 17, 'green', '2022-12-27 20:28:31', 'System.stateColor', '', ''),
(94, 76, 17, 'Зелёный', '2022-12-27 20:28:31', 'System.stateTitle', '', ''),
(95, 42, 18, 'green', '2021-05-18 14:46:24', 'Communication.stateColor', '', ''),
(96, 77, 18, 'Зелёный', '2021-05-18 14:46:24', 'Communication.stateTitle', '', ''),
(97, 42, 16, 'green', '2013-08-09 13:29:00', 'Security.stateColor', '', ''),
(98, 78, 16, 'Green', '2013-08-09 13:29:00', 'Security.stateTitle', '', ''),
(99, 41, 17, '', '2022-12-27 20:28:31', 'System.stateDetails', '', ''),
(310, 136, 68, '10:00', '2015-12-03 14:47:55', 'admin.CoordinatesUpdated', '', ''),
(308, 134, 68, '', '2015-12-03 14:47:55', 'admin.atHome', '', ''),
(309, 135, 68, '', '2015-12-03 14:47:55', 'admin.Coordinates', '', ''),
(100, 83, 7, '100', '2018-07-05 14:46:22', 'ThisComputer.volumeLevel', '', ''),
(157, 110, 7, ' +5°...+7°, пасмурно, небольшой дождь', '2016-04-05 10:57:52', 'ThisComputer.weatherTomorrow', '', ''),
(191, 62, 29, '22.5', '2014-09-05 12:44:59', 'Kitchen.Temperature', '', ''),
(188, 426, 51, '', '2014-09-04 12:12:08', 'MotionSensor1.statusText', '', ''),
(187, 427, 51, '', '2014-09-04 12:12:08', 'MotionSensor1.aliveTimeOut', '', ''),
(319, 376, 76, '0', '2020-01-04 17:24:00', 'Switch3.status', 'commands', '/ajax/scenes.html?op=click&id=59'),
(318, 376, 75, '0', '2020-01-04 17:23:57', 'Switch2.status', 'commands', '/ajax/scenes.html?op=click&id=57'),
(120, 59, 30, '1489158734', '2017-03-10 18:12:14', 'Hall.LatestActivity', '', ''),
(121, 60, 30, '18:12', '2017-03-10 18:12:14', 'Hall.LatestActivityTime', '', ''),
(122, 61, 30, '0', '2017-03-10 18:22:15', 'Hall.SomebodyHere', '', ''),
(123, 98, 7, '1', '2016-04-05 10:57:51', 'ThisComputer.somebodyHome', '', ''),
(124, 55, 20, '0', '2018-10-31 19:58:19', 'NobodyHomeMode.active', '', ''),
(125, 57, 20, '1541005099', '2018-10-31 19:58:19', 'NobodyHomeMode.updated', '', ''),
(126, 58, 20, '19:58', '2018-10-31 19:58:19', 'NobodyHomeMode.updatedTime', '', ''),
(128, 59, 24, '1488894121', '2017-03-07 16:42:01', 'Livingroom.LatestActivity', '', ''),
(129, 60, 24, '16:42', '2017-03-07 16:42:01', 'Livingroom.LatestActivityTime', '', ''),
(130, 61, 24, '0', '2017-03-07 16:52:01', 'Livingroom.SomebodyHere', '', ''),
(132, 59, 29, '1409838113', '2014-09-04 16:41:53', 'Kitchen.LatestActivity', '', ''),
(133, 60, 29, '16:41', '2014-09-04 16:41:53', 'Kitchen.LatestActivityTime', '', ''),
(134, 61, 29, '0', '2014-09-04 16:51:53', 'Kitchen.SomebodyHere', '', ''),
(135, 56, 20, '<#LANG_GENERAL_NOBODYS_HOME_MODE#>', '2018-10-30 13:08:56', 'NobodyHomeMode.title', '', ''),
(136, 55, 19, '0', '2018-10-30 23:02:50', 'EconomMode.active', '', ''),
(137, 57, 19, '1540929770', '2018-10-30 23:02:50', 'EconomMode.updated', '', ''),
(138, 58, 19, '23:02', '2018-10-30 23:02:50', 'EconomMode.updatedTime', '', ''),
(139, 56, 19, '<#LANG_GENERAL_ENERGY_SAVING_MODE#>', '2018-10-30 13:08:10', 'EconomMode.title', '', ''),
(140, 55, 23, '0', '2022-12-27 19:46:00', 'DarknessMode.active', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(141, 57, 23, '1672163160', '2022-12-27 19:46:00', 'DarknessMode.updated', '', '/api.php/method/DarknessMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute&m_c_s[1]=DarknessMode.mod...'),
(142, 58, 23, '19:46', '2022-12-27 19:46:00', 'DarknessMode.updatedTime', '', '/api.php/method/DarknessMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute&m_c_s[1]=DarknessMode.mod...'),
(143, 56, 23, '<#LANG_GENERAL_DARKNESS_MODE#>', '2018-10-30 13:05:40', 'DarknessMode.title', '', ''),
(144, 101, 7, '19:47', '2022-12-27 19:47:00', 'ThisComputer.timeNow', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(145, 102, 7, '19:47 Кто-то есть   ', '2022-12-27 19:47:00', 'ThisComputer.HomeStatus', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(146, 103, 7, '0', '2022-12-27 19:46:00', 'ThisComputer.isDark', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(147, 55, 47, '0', '2020-04-08 08:00:01', 'NightMode.active', '', '/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1'),
(148, 57, 47, '1586322001', '2020-04-08 08:00:01', 'NightMode.updated', '', '/api.php/method/NightMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.on...'),
(149, 58, 47, '08:00', '2020-04-08 08:00:01', 'NightMode.updatedTime', '', '/api.php/method/NightMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute.78329826dbb85da7f05bafc195194db6&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.on...'),
(150, 56, 47, '<#LANG_GENERAL_NIGHT_MODE#>', '2018-10-30 13:08:28', 'NightMode.title', '', ''),
(151, 104, 7, '20:40', '2021-05-18 16:00:03', 'ThisComputer.SunSetTime', '', 'ow main city process'),
(152, 105, 7, '04:11', '2021-05-18 16:00:03', 'ThisComputer.SunRiseTime', '', 'ow main city process'),
(153, 106, 7, 'Кто-то есть..', '2018-10-31 19:58:20', 'ThisComputer.somebodyHomeText', '', ''),
(158, 111, 7, ' +31°...+33°, переменная облачность', '2016-04-05 10:57:52', 'ThisComputer.weatherTomorrowweatherToday', '', ''),
(155, 108, 7, '', '2016-04-05 10:57:52', 'ThisComputer.wunderHost', '', ''),
(159, 112, 7, ' +8°...+10°, пасмурно', '2016-04-05 10:57:52', 'ThisComputer.weatherToday', '', ''),
(160, 113, 7, '1407249215', '2016-04-05 10:57:52', 'ThisComputer.connect_manualRun', '', ''),
(323, 153, 7, '', '2017-08-10 16:02:14', 'ThisComputer.UpdateVersion', '', ''),
(161, 114, 7, '1', '2016-04-05 10:57:52', 'ThisComputer.clockChimeEnabled', 'commands', ''),
(175, 428, 51, '0', '2016-12-01 16:32:19', 'MotionSensor1.motionDetected', '', ''),
(173, 377, 51, '1', '2018-10-31 19:52:43', 'MotionSensor1.alive', '', ''),
(172, 430, 51, '1480599109', '2016-12-01 16:31:49', 'MotionSensor1.updatedTimestamp', '', ''),
(171, 376, 51, '0', '2017-03-07 16:41:55', 'MotionSensor1.status', 'noolite', ''),
(213, 59, 54, '1409911260', '2016-03-22 18:19:37', 'Kinderroom.LatestActivity', '', ''),
(214, 60, 54, '13:01', '2016-03-22 18:19:37', 'Kinderroom.LatestActivityTime', '', ''),
(215, 61, 54, '0', '2016-03-22 18:19:37', 'Kinderroom.SomebodyHere', '', ''),
(223, 59, 28, '1409838048', '2014-09-04 16:40:48', 'Bedroom.LatestActivity', '', ''),
(224, 60, 28, '16:40', '2014-09-04 16:40:48', 'Bedroom.LatestActivityTime', '', ''),
(225, 61, 28, '0', '2014-09-04 16:50:48', 'Bedroom.SomebodyHere', '', ''),
(242, 62, 24, '22.4', '2014-09-05 12:26:26', 'Livingroom.Temperature', '', ''),
(243, 127, 29, '43', '2014-09-05 12:44:59', 'Kitchen.Humidity', '', ''),
(251, 62, 28, '22.5', '2014-09-05 12:54:30', 'Bedroom.Temperature', '', ''),
(253, 127, 24, '42', '2014-09-05 12:26:26', 'Livingroom.Humidity', '', ''),
(266, 59, 53, '', '2014-09-04 16:07:54', 'Bathroom.LatestActivity', '', ''),
(267, 60, 53, '', '2014-09-04 16:07:54', 'Bathroom.LatestActivityTime', '', ''),
(268, 61, 53, '', '2014-09-04 16:07:54', 'Bathroom.SomebodyHere', '', ''),
(269, 62, 53, '', '2014-09-04 16:07:54', 'Bathroom.Temperature', '', ''),
(270, 127, 53, '', '2014-09-04 16:07:54', 'Bathroom.Humidity', '', ''),
(271, 132, 53, 'Bathroom', '2019-02-28 15:28:08', 'Bathroom.Title', '', '/admin.php?pd=Y2xhc3'),
(272, 127, 28, '42', '2014-09-05 12:54:30', 'Bedroom.Humidity', '', ''),
(273, 132, 28, 'Bedroom', '2019-02-28 15:28:15', 'Bedroom.Title', '', '/admin.php?pd=Y2xhc3'),
(274, 62, 30, '', '2014-09-04 16:08:23', 'Hall.Temperature', '', ''),
(275, 127, 30, '', '2014-09-04 16:08:23', 'Hall.Humidity', '', ''),
(276, 132, 30, 'Hall', '2019-02-28 15:28:21', 'Hall.Title', '', '/admin.php?pd=Y2xhc3'),
(277, 62, 54, '', '2016-03-22 18:19:37', 'Kinderroom.Temperature', '', ''),
(278, 127, 54, '', '2016-03-22 18:19:37', 'Kinderroom.Humidity', '', ''),
(279, 132, 54, 'Детская', '2016-03-22 18:19:37', 'Kinderroom.Title', '', ''),
(280, 132, 29, 'Kitchen', '2019-02-28 15:28:29', 'Kitchen.Title', '', '/admin.php?pd=Y2xhc3'),
(281, 132, 24, 'Livingroom', '2019-02-28 15:28:36', 'Livingroom.Title', '', '/admin.php?pd=Y2xhc3'),
(282, 59, 55, '', '2014-09-04 16:09:14', 'Toilet.LatestActivity', '', ''),
(283, 60, 55, '', '2014-09-04 16:09:14', 'Toilet.LatestActivityTime', '', ''),
(284, 61, 55, '', '2014-09-04 16:09:14', 'Toilet.SomebodyHere', '', ''),
(285, 62, 55, '', '2014-09-04 16:09:14', 'Toilet.Temperature', '', ''),
(286, 127, 55, '', '2014-09-04 16:09:14', 'Toilet.Humidity', '', ''),
(287, 132, 55, 'Toilet', '2019-02-28 15:28:42', 'Toilet.Title', '', '/admin.php?pd=Y2xhc3'),
(294, 41, 18, '', '2021-05-18 14:46:24', 'Communication.stateDetails', '', ''),
(299, 143, 7, '1409902937', '2016-04-05 10:57:52', 'ThisComputer.lastNewsRead', '', ''),
(300, 144, 7, '', '2016-04-05 10:57:52', 'ThisComputer.NoolightCommandSend', '', ''),
(301, 145, 7, '0,2', '2016-04-05 10:57:52', 'ThisComputer.AlreadyPlayedMusic', '', ''),
(304, 148, 7, '1672163160', '2022-12-27 19:46:00', 'ThisComputer.lastSayTime', '', '/api.php/method/DarknessMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute&m_c_s[1]=DarknessMode.mod...'),
(305, 149, 7, '72', '2022-12-27 19:47:07', 'ThisComputer.uptime', '', ''),
(306, 150, 7, '1672163155', '2022-12-27 19:45:55', 'ThisComputer.started_time', '', ''),
(307, 376, 74, '0', '2020-01-04 17:24:01', 'Switch1.status', 'commands', '/ajax/scenes.html?op=click&id=55'),
(311, 137, 68, '', '2015-12-03 14:47:55', 'admin.CoordinatesUpdatedTimestamp', '', ''),
(312, 138, 68, '', '2015-12-03 14:47:55', 'admin.fullName', '', ''),
(313, 139, 68, '', '2015-12-03 14:47:55', 'admin.isMoving', '', ''),
(314, 140, 68, 'Home', '2015-12-03 14:47:55', 'admin.seenAt', '', ''),
(325, 156, 7, '1', '2016-09-14 17:47:25', 'ThisComputer.WebCamService', 'commands', ''),
(326, 157, 7, '0', '2020-10-12 00:10:02', 'ThisComputer.SpaceProblems', '', '/objects/?job=1956804'),
(327, 158, 7, '', '2020-10-12 00:10:02', 'ThisComputer.SpaceProblems_Details', '', '/objects/?job=1956804'),
(338, 159, 7, '1489996825', '2017-03-20 11:00:25', 'ThisComputer.LatestNooliteCommand', '', 'noolite'),
(339, 385, 79, '20.8', '2017-03-10 16:06:26', 'TempSensor01.value', 'noolite', 'noolite'),
(340, 385, 80, '36', '2017-03-10 16:06:26', 'HumSensor01.value', 'noolite', 'noolite'),
(341, 379, 79, '1489151186', '2017-03-10 16:06:26', 'TempSensor01.updated', '', ''),
(342, 419, 79, '16:14', '2016-12-01 16:14:07', 'TempSensor01.updatedTime', '', ''),
(343, 377, 79, '1', '2017-03-10 16:06:26', 'TempSensor01.alive', '', ''),
(344, 379, 80, '1489151186', '2017-03-10 16:06:26', 'HumSensor01.updated', '', ''),
(345, 423, 80, '16:14', '2016-12-01 16:14:07', 'HumSensor01.updatedTime', '', ''),
(346, 377, 80, '1', '2017-03-10 16:06:26', 'HumSensor01.alive', '', ''),
(348, 160, 7, '1', '2016-09-14 17:55:39', 'ThisComputer.WebCamMotion', '', ''),
(349, 161, 7, '1', '2016-09-14 18:03:12', 'ThisComputer.WebCamMotionAuto', 'commands', ''),
(449, 261, 7, '08:00', '2016-04-05 10:57:52', 'ThisComputer.NightModeEnd', 'commands', ''),
(448, 260, 7, '20:00', '2016-04-05 10:57:52', 'ThisComputer.NightModeStart', 'commands', ''),
(447, 259, 7, '', '2022-12-27 19:46:36', 'ThisComputer.Serial', '', '/scripts/clear_all_history.php?confirm=1'),
(450, 262, 7, '0', '2016-04-05 16:36:17', 'ThisComputer.ConnectService', 'commands', ''),
(451, 263, 7, '0', '2016-08-03 14:04:52', 'ThisComputer.economTurnOff', 'commands', ''),
(452, 264, 7, '1', '2016-04-05 11:43:51', 'ThisComputer.DemoWeather', 'commands', ''),
(453, 265, 7, '1', '2016-04-05 11:43:50', 'ThisComputer.DemoMusic', 'commands', ''),
(454, 266, 7, '1', '2016-04-05 11:38:29', 'ThisComputer.DemoPower', 'commands', ''),
(455, 267, 7, '1', '2016-04-05 11:43:50', 'ThisComputer.DemoAsk', 'commands', ''),
(456, 268, 7, 'Тёмное время суток деактивировано.', '2022-12-27 19:46:00', 'ThisComputer.lastSayMessage', '', '/api.php/method/DarknessMode.modeChanged?PROPERTY=active&NEW_VALUE=0&OLD_VALUE=1&SOURCE=/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1&raiseEvent=1&m_c_s[0]=ClockChime.onNewMinute&m_c_s[1]=DarknessMode.mod...'),
(559, 408, 74, '1', '2016-11-29 13:09:38', 'Switch1.allOffGroup', 'commands', ''),
(558, 409, 74, '1', '2016-11-29 13:09:41', 'Switch1.greetingOnGroup', 'commands', ''),
(560, 414, 76, '1', '2016-11-29 13:09:37', 'Switch3.allOffGroup', '', ''),
(561, 411, 75, '1', '2016-11-29 13:09:38', 'Switch2.allOffGroup', '', ''),
(562, 412, 75, '1', '2016-11-29 13:09:41', 'Switch2.greetingOnGroup', '', ''),
(563, 415, 76, '1', '2016-11-29 13:09:42', 'Switch3.greetingOnGroup', '', ''),
(568, 390, 7, '1', '2022-12-27 20:27:13', 'ThisComputer.WSClientsTotal', '', ''),
(574, 402, 108, '{\"name\":\"TempSensor01\",\"service_name\":\"Температура дома\",\"characteristic\":\"CurrentTemperature\"}', '2017-08-10 15:31:57', 'HomeBridge.from_get', 'mqtt', ''),
(573, 395, 108, '{\"Switch1\":{\"services\":{\"Switch 1\":\"Outlet\"},\"characteristics\":{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}},\"Switch2\":{\"services\":{\"Switch 2\":\"Outlet\"},\"characteristics\":{\"Switch 2\":{\"On\":false,\"OutletInUse\":false}}},\"Switch3\":{\"services\":{\"Switch 3\":\"Outlet\"},\"characteristics\":{\"Switch 3\":{\"On\":false,\"OutletInUse\":false}}},\"TempSensor01\":{\"services\":{\"Температура\":\"TemperatureSensor\"},\"characteristics\":{\"Температура\":{\"CurrentTemperature\":20.8}}},\"HumSensor01\":{\"services\":{\"Влажность\":\"HumiditySensor\"},\"characteristics\":{\"Влажность\":{\"CurrentRelativeHumidity\":36}}},\"MotionSensor1\":{\"services\":{\"Датчик движения 1\":\"MotionSensor\"},\"characteristics\":{\"Датчик движения 1\":{\"MotionDetected\":false}}},\"request_id\":0}', '2022-08-25 14:10:27', 'HomeBridge.from_response', 'mqtt', '/api.php/module/mqtt?topic=homebridge/from/response&msg={\"Switch1\":{\"services\":{\"Switch 1\":\"Outlet\"},\"characteristics\":{\"Switch 1\":{\"On\":false,\"OutletInUse\":false}}},\"Switch2\":{\"services\":{\"Switch 2\":\"Outlet\"},\"characteristics\":{\"Switch 2\":{\"On\":fals...'),
(575, 406, 108, '{\"name\":\"Noo3\",\"manufacturer\":\"homebridge-mqtt\",\"model\":\"v0.4.2\",\"serialnumber\":\"2017-03-20T09:17\"}', '2017-03-21 16:40:45', 'HomeBridge.from_identify', 'mqtt', ''),
(576, 403, 108, '{\"name\":\"Switch1\",\"service_name\":\"Switch 1\",\"characteristic\":\"On\",\"value\":false}', '2017-08-10 15:32:20', 'HomeBridge.from_set', 'mqtt', ''),
(577, 396, 108, '{\"name\":\"MotionSensor1\",\"service_name\":\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\",\"service\":\"MotionSensor\"}', '2022-12-27 19:45:52', 'HomeBridge.to_add', 'mqtt', ''),
(578, 397, 108, '', NULL, 'HomeBridge.to_add_service', 'mqtt', ''),
(579, 400, 108, '{\"name\": \"*\"}', '2022-12-27 19:45:52', 'HomeBridge.to_get', 'mqtt', ''),
(580, 398, 108, '{\"name\":\"MotionSensor1\"}', '2019-02-28 16:14:38', 'HomeBridge.to_remove', 'mqtt', ''),
(581, 399, 108, '', NULL, 'HomeBridge.to_remove_service', 'mqtt', ''),
(582, 401, 108, '{\"name\":\"MotionSensor1\",\"service_name\":\"\\u0414\\u0430\\u0442\\u0447\\u0438\\u043a \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f 1\",\"service\":\"MotionSensor\",\"characteristic\":\"MotionDetected\",\"value\":0}', '2022-12-27 19:45:52', 'HomeBridge.to_set', 'mqtt', ''),
(583, 405, 108, '', NULL, 'HomeBridge.to_set_accessoryinformation', 'mqtt', ''),
(584, 404, 108, '', NULL, 'HomeBridge.to_set_reachability', 'mqtt', ''),
(585, 378, 74, 'Livingroom', '2017-03-21 15:06:00', 'Switch1.linkedRoom', '', ''),
(586, 378, 75, 'Kinderroom', '2017-03-21 15:06:24', 'Switch2.linkedRoom', '', ''),
(587, 378, 76, 'Hall', '2017-03-21 15:14:52', 'Switch3.linkedRoom', '', ''),
(588, 379, 74, '1578147841', '2020-01-04 17:24:01', 'Switch1.updated', '', '/ajax/scenes.html?op=click&id=55'),
(589, 380, 74, '3 мин. назад', '2020-01-04 17:27:01', 'Switch1.updatedText', '', '/objects/?job=1854743'),
(590, 377, 74, '1', '2019-02-28 13:07:16', 'Switch1.alive', '', ''),
(591, 379, 75, '1578147837', '2020-01-04 17:23:57', 'Switch2.updated', '', '/ajax/scenes.html?op=click&id=57'),
(592, 380, 75, '3 мин. назад', '2020-01-04 17:26:57', 'Switch2.updatedText', '', '/objects/?job=1854737'),
(593, 377, 75, '1', '2019-02-28 13:07:16', 'Switch2.alive', '', ''),
(594, 379, 76, '1578147840', '2020-01-04 17:24:00', 'Switch3.updated', '', '/ajax/scenes.html?op=click&id=59'),
(595, 380, 76, '3 мин. назад', '2020-01-04 17:27:00', 'Switch3.updatedText', '', '/objects/?job=1854741'),
(596, 377, 76, '1', '2019-02-28 13:07:16', 'Switch3.alive', '', ''),
(599, 386, 79, '16', '2017-03-07 13:45:14', 'TempSensor01.minValue', '', ''),
(600, 387, 79, '25', '2017-03-07 13:45:14', 'TempSensor01.maxValue', '', ''),
(597, 416, 108, '', '2022-12-27 19:45:57', 'HomeBridge.mode', '', 'Job: HomeBridgeMode'),
(598, 378, 79, 'Livingroom', '2018-10-30 12:54:33', 'TempSensor01.linkedRoom', '', ''),
(601, 378, 80, 'Livingroom', '2018-10-30 12:54:11', 'HumSensor01.linkedRoom', '', ''),
(602, 386, 80, '30', '2017-03-07 13:45:40', 'HumSensor01.minValue', '', ''),
(603, 387, 80, '60', '2017-03-07 13:45:40', 'HumSensor01.maxValue', '', ''),
(604, 379, 51, '1488894115', '2017-03-07 16:41:55', 'MotionSensor1.updated', '', ''),
(605, 380, 51, '16:41', '2017-03-07 16:41:55', 'MotionSensor1.updatedText', '', ''),
(608, 380, 79, '16:06', '2017-03-10 16:06:26', 'TempSensor01.updatedText', '', ''),
(611, 389, 80, '1', '2017-03-09 17:36:39', 'HumSensor01.normalValue', '', ''),
(609, 389, 79, '1', '2017-03-09 17:59:51', 'TempSensor01.normalValue', '', ''),
(610, 380, 80, '16:06', '2017-03-10 16:06:26', 'HumSensor01.updatedText', '', ''),
(618, 381, 74, '1', '2017-03-20 13:12:41', 'Switch1.groupEco', 'commands', ''),
(619, 381, 76, '1', '2017-03-20 13:12:38', 'Switch3.groupEco', '', ''),
(620, 381, 75, '1', '2017-03-20 13:12:39', 'Switch2.groupEco', '', ''),
(621, 382, 74, '1', '2017-03-20 13:14:20', 'Switch1.groupSunrise', 'commands', ''),
(622, 382, 76, '1', '2017-03-20 13:14:18', 'Switch3.groupSunrise', '', ''),
(623, 382, 75, '1', '2017-03-20 13:14:18', 'Switch2.groupSunrise', '', ''),
(643, 518, 7, 'b8d03ab6e22461678b85e1df66a02325b04e6ff9', '2022-08-25 14:09:43', 'ThisComputer.LatestUpdateId', '', '/modules/saverestore/update_iframe.php?with_extensions=1&with_backup=&backup=&design=&code=&data=&save_files='),
(644, 519, 7, '25.08.2022 14:09:43', '2022-08-25 14:09:43', 'ThisComputer.LatestUpdateTimestamp', '', '/modules/saverestore/update_iframe.php?with_extensions=1&with_backup=&backup=&design=&code=&data=&save_files='),
(2328, 2203, 7, '4', '2018-10-30 23:03:11', 'ThisComputer.volumeMediaLevel', '', ''),
(2329, 2204, 7, '27', '2022-12-27 19:47:00', 'ThisComputer.DayOfMonthNum', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(2330, 2205, 7, 'Tuesday', '2022-12-27 19:47:00', 'ThisComputer.DayOfWeekTXT', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(2331, 2206, 7, 'December', '2022-12-27 19:47:00', 'ThisComputer.MonthTXTalt', '', '/api.php/method/ClockChime.onNewMinute?m_c_s[0]=ClockChime.onNewMinute&r_s_m=1&no_session=1'),
(4519, 4402, 7, '1', '2019-09-10 00:28:57', 'ThisComputer.HideLeftPanelAdmin', '', '/admin.php?pd=Y2xhc3Nlczp7aWQ9MjQsdmlld19tb2RlPWVkaXRfY2xhc3Nlcyx0YWI9b2JqZWN0cyxpbnN0YW5jZT1hZG19pz_cGFuZWw6e2FjdGlvbj1jbGFzc2VzfQ%3D%3Dpz_&md=classes&inst=adm&data_source=&view_mode=edit_classes&id=24&tab=objects&toggleLeftPanel=1'),
(4536, 4422, 7, '1m', '2022-12-27 19:47:07', 'ThisComputer.uptimeText', '', ''),
(5994, 5918, 7, '55.761665', '2021-05-04 21:24:27', 'ThisComputer.lat', '', '/admin.php?pd=cGFuZWw6e2FjdGlvbj1hcHBfb3BlbndlYXRoZXJ9pz_&md=app_openweather&inst=adm&'),
(5995, 5919, 7, '37.606667', '2021-05-04 21:24:27', 'ThisComputer.lon', '', '/admin.php?pd=cGFuZWw6e2FjdGlvbj1hcHBfb3BlbndlYXRoZXJ9pz_&md=app_openweather&inst=adm&'),
(5996, 5920, 7, 'MASTER', '2022-08-25 14:09:43', 'ThisComputer.LatestUpdateBranch', '', '/modules/saverestore/update_iframe.php?with_extensions=1&with_backup=&backup=&design=&code=&data=&save_files='),
(6014, 5937, 591, '1007', '2021-05-18 16:00:01', 'ow_fact.pressure', '', '/objects/?'),
(6015, 5938, 591, '755.3', '2021-05-18 16:00:01', 'ow_fact.pressure_mmhg', '', '/objects/?'),
(6012, 5821, 591, '29.8', '2021-05-18 16:00:01', 'ow_fact.temperature', '', '/objects/?'),
(6013, 5936, 591, '28.7', '2021-05-18 16:00:01', 'ow_fact.temp_feels_like', '', '/objects/?'),
(6016, 5939, 591, '32', '2021-05-18 16:00:02', 'ow_fact.humidity', '', '/objects/?'),
(6017, 5940, 591, '11.4', '2021-05-18 16:00:02', 'ow_fact.dew_point', '', '/objects/?'),
(6018, 5941, 591, '2.82', '2021-05-18 16:00:02', 'ow_fact.uvindex', '', '/objects/?'),
(6019, 5942, 591, '10000', '2021-05-18 16:00:02', 'ow_fact.visibility', '', '/objects/?'),
(6020, 5943, 591, '133', '2021-05-18 16:00:02', 'ow_fact.wind_direction', '', '/objects/?'),
(6021, 5944, 591, 'ЮВ', '2021-05-18 16:00:02', 'ow_fact.wind_direction_text', '', '/objects/?'),
(6022, 5945, 591, 'Юго-Восток', '2021-05-18 16:00:02', 'ow_fact.wind_direction_full', '', '/objects/?'),
(6023, 5946, 591, '6.8', '2021-05-18 16:00:02', 'ow_fact.wind_speed', '', '/objects/?'),
(6024, 5947, 591, '800', '2021-05-18 16:00:02', 'ow_fact.condCode', '', '/objects/?'),
(6025, 5948, 591, 'ясно', '2021-05-18 16:00:02', 'ow_fact.weather_type', '', '/objects/?'),
(6026, 5949, 591, '01d', '2021-05-18 16:00:02', 'ow_fact.image', '', '/objects/?'),
(6027, 5950, 591, '3', '2021-05-18 16:00:02', 'ow_fact.clouds', '', '/objects/?'),
(6028, 5951, 591, '', '2021-05-18 16:00:02', 'ow_fact.rain', '', '/objects/?'),
(6029, 5952, 591, '', '2021-05-18 16:00:02', 'ow_fact.snow', '', '/objects/?'),
(6030, 5953, 591, '18.05.2021 16:00:00 EAT 2021', '2021-05-18 16:00:02', 'ow_fact.data_update', '', '/objects/?'),
(6031, 5954, 591, '04:11', '2021-05-18 16:00:02', 'ow_fact.sunrise', '', '/objects/?'),
(6032, 5955, 591, '20:40', '2021-05-18 16:00:02', 'ow_fact.sunset', '', '/objects/?'),
(6033, 5956, 591, '16:28', '2021-05-18 16:00:02', 'ow_fact.day_length', '', '/objects/?'),
(6034, 5957, 591, '03:21', '2021-05-18 16:00:03', 'ow_fact.civil_twilight_begin', '', '/objects/?'),
(6035, 5958, 591, '21:30', '2021-05-18 16:00:03', 'ow_fact.civil_twilight_end', '', '/objects/?'),
(6097, 6028, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_pingRun', '', '/scripts/clear_all_history.php?confirm=1'),
(6098, 6029, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_webvarsRun', '', '/scripts/clear_all_history.php?confirm=1'),
(6095, 6026, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_execsRun', '', '/scripts/clear_all_history.php?confirm=1'),
(6096, 6027, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_schedulerRun', '', '/scripts/clear_all_history.php?confirm=1'),
(6093, 6024, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_statesRun', '', '/scripts/clear_all_history.php?confirm=1'),
(6094, 6025, 7, '1987523196', '2022-12-27 19:46:36', 'ThisComputer.cycle_mainRun', '', '/scripts/clear_all_history.php?confirm=1');

-- --------------------------------------------------------

--
-- Table structure for table `readit_channels`
--

DROP TABLE IF EXISTS `readit_channels`;
CREATE TABLE IF NOT EXISTS `readit_channels` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `readit_urls`
--

DROP TABLE IF EXISTS `readit_urls`;
CREATE TABLE IF NOT EXISTS `readit_urls` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `URL` char(255) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `FAVORITE` int(3) NOT NULL DEFAULT 0,
  `ADDED` datetime DEFAULT NULL,
  `SYS_ID` varchar(255) NOT NULL DEFAULT '',
  `CHANNEL_ID` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss_channels`
--

DROP TABLE IF EXISTS `rss_channels`;
CREATE TABLE IF NOT EXISTS `rss_channels` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `URL` char(255) NOT NULL DEFAULT '',
  `NEXT_UPDATE` datetime DEFAULT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL,
  `UPDATE_EVERY` int(10) NOT NULL DEFAULT 0,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss_items`
--

DROP TABLE IF EXISTS `rss_items`;
CREATE TABLE IF NOT EXISTS `rss_items` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `BODY` text DEFAULT NULL,
  `URL` char(255) NOT NULL DEFAULT '',
  `GUID` varchar(255) NOT NULL DEFAULT '',
  `ADDED` varchar(255) NOT NULL DEFAULT '',
  `CHANNEL_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11992 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ru101_categories`
--

DROP TABLE IF EXISTS `ru101_categories`;
CREATE TABLE IF NOT EXISTS `ru101_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ru101_categories`
--

INSERT INTO `ru101_categories` (`ID`, `TITLE`) VALUES
(160, 'Коммерческое Радио'),
(161, 'Танцевальное Радио'),
(162, 'Электроника'),
(163, 'Широкий Формат'),
(164, 'Фоновая Музыка'),
(165, 'Поп Музыка'),
(166, 'Рок Музыка'),
(167, 'Русская Музыка'),
(168, 'Джаз / Блюз'),
(169, 'Рэп / Хип-Хоп'),
(170, 'Юмор'),
(171, 'Для Детей'),
(172, 'Ретро'),
(173, 'Золотая Коллекция'),
(174, 'World Music'),
(175, 'Этническая Музыка'),
(176, 'Классика'),
(177, 'Эфирное Радио');

-- --------------------------------------------------------

--
-- Table structure for table `ru101_stations`
--

DROP TABLE IF EXISTS `ru101_stations`;
CREATE TABLE IF NOT EXISTS `ru101_stations` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `CATEGORY_ID` int(10) NOT NULL DEFAULT 0,
  `PAGE_URL` char(255) NOT NULL DEFAULT '',
  `PLAYLIST_URL` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ru101_stations`
--

INSERT INTO `ru101_stations` (`ID`, `TITLE`, `CATEGORY_ID`, `PAGE_URL`, `PLAYLIST_URL`) VALUES
(1, 'KFC So Good Music', 160, 'http://101.ru/?an=port_channel_mp3&channel=169', ''),
(2, 'Первое Музыкальное', 160, 'http://101.ru/?an=port_channel_mp3&channel=204', ''),
(3, 'Сокольники', 160, 'http://101.ru/?an=port_channel_mp3&channel=203', ''),
(4, 'Crocus City Hall', 160, 'http://101.ru/?an=port_channel_mp3&channel=213', ''),
(5, 'Olimpik.ru', 160, 'http://101.ru/?an=port_channel_mp3&channel=225', ''),
(6, 'Лето Non-Stop', 161, 'http://101.ru/?an=port_channel_mp3&channel=150', ''),
(7, 'Club Dance', 161, 'http://101.ru/?an=port_channel_mp3&channel=5', ''),
(8, 'Hot Traxx', 161, 'http://101.ru/?an=port_channel_mp3&channel=9', ''),
(9, 'Euro Hits', 161, 'http://101.ru/?an=port_channel_mp3&channel=82', ''),
(10, 'Russian Dance', 161, 'http://101.ru/?an=port_channel_mp3&channel=17', ''),
(11, 'House', 161, 'http://101.ru/?an=port_channel_mp3&channel=10', ''),
(12, 'Big Room', 161, 'http://101.ru/?an=port_channel_mp3&channel=220', ''),
(13, 'Electro', 161, 'http://101.ru/?an=port_channel_mp3&channel=7', ''),
(14, 'Progressive', 161, 'http://101.ru/?an=port_channel_mp3&channel=13', ''),
(15, 'In The Mix', 161, 'http://101.ru/?an=port_channel_mp3&channel=11', ''),
(16, 'La Costa Latina', 161, 'http://101.ru/?an=port_channel_mp3&channel=259', ''),
(17, 'Radio First', 161, 'http://101.ru/?an=port_channel_mp3&channel=242', ''),
(18, 'Дискотека 90-х', 161, 'http://101.ru/?an=port_channel_mp3&channel=74', ''),
(19, 'Россия 90-х', 161, 'http://101.ru/?an=port_channel_mp3&channel=33', ''),
(20, 'Дискотека 80-х', 161, 'http://101.ru/?an=port_channel_mp3&channel=1', ''),
(21, 'Дискотека СССР', 161, 'http://101.ru/?an=port_channel_mp3&channel=144', ''),
(22, 'Disco', 161, 'http://101.ru/?an=port_channel_mp3&channel=80', ''),
(23, 'Italo Disco', 161, 'http://101.ru/?an=port_channel_mp3&channel=161', ''),
(24, 'Electronic', 162, 'http://101.ru/?an=port_channel_mp3&channel=132', ''),
(25, 'Trance', 162, 'http://101.ru/?an=port_channel_mp3&channel=19', ''),
(26, 'Techno', 162, 'http://101.ru/?an=port_channel_mp3&channel=18', ''),
(27, 'Breakbeat', 162, 'http://101.ru/?an=port_channel_mp3&channel=4', ''),
(28, 'Tech House', 162, 'http://101.ru/?an=port_channel_mp3&channel=170', ''),
(29, 'Drum & Bass', 162, 'http://101.ru/?an=port_channel_mp3&channel=6', ''),
(30, 'DubStep', 162, 'http://101.ru/?an=port_channel_mp3&channel=136', ''),
(31, 'Chillstep', 162, 'http://101.ru/?an=port_channel_mp3&channel=260', ''),
(32, 'Cyber Space', 162, 'http://101.ru/?an=port_channel_mp3&channel=79', ''),
(33, 'Trap', 162, 'http://101.ru/?an=port_channel_mp3&channel=193', ''),
(34, 'Rave', 162, 'http://101.ru/?an=port_channel_mp3&channel=151', ''),
(35, 'Музыка Авторадио', 163, 'http://101.ru/?an=port_channel_mp3&channel=2', ''),
(36, '90\'s Gold', 163, 'http://101.ru/?an=port_channel_mp3&channel=75', ''),
(37, 'Golden 70\'s', 163, 'http://101.ru/?an=port_channel_mp3&channel=192', ''),
(38, 'Mainstream', 163, 'http://101.ru/?an=port_channel_mp3&channel=87', ''),
(39, 'Голос', 163, 'http://101.ru/?an=port_channel_mp3&channel=198', ''),
(40, 'Live Hits', 163, 'http://101.ru/?an=port_channel_mp3&channel=86', ''),
(41, 'Мюзиклы', 163, 'http://101.ru/?an=port_channel_mp3&channel=92', ''),
(42, 'Game Radio', 163, 'http://101.ru/?an=port_channel_mp3&channel=181', ''),
(43, 'Прикосновение', 163, 'http://101.ru/?an=port_channel_mp3&channel=196', ''),
(45, 'Deep House', 164, 'http://101.ru/?an=port_channel_mp3&channel=173', ''),
(46, 'Sex', 164, 'http://101.ru/?an=port_channel_mp3&channel=27', ''),
(47, 'Chillоut', 164, 'http://101.ru/?an=port_channel_mp3&channel=24', ''),
(48, 'New Age', 164, 'http://101.ru/?an=port_channel_mp3&channel=120', ''),
(49, 'Ambient', 164, 'http://101.ru/?an=port_channel_mp3&channel=23', ''),
(50, 'Тантра', 164, 'http://101.ru/?an=port_channel_mp3&channel=241', ''),
(51, 'Soulful House', 164, 'http://101.ru/?an=port_channel_mp3&channel=184', ''),
(52, 'Акустика', 164, 'http://101.ru/?an=port_channel_mp3&channel=164', ''),
(53, 'Звуки Природы', 164, 'http://101.ru/?an=port_channel_mp3&channel=32', ''),
(54, 'Easy Listening', 164, 'http://101.ru/?an=port_channel_mp3&channel=26', ''),
(55, 'Office Lounge', 164, 'http://101.ru/?an=port_channel_mp3&channel=30', ''),
(56, 'Instrumental', 164, 'http://101.ru/?an=port_channel_mp3&channel=28', ''),
(57, 'Саундтреки', 164, 'http://101.ru/?an=port_channel_mp3&channel=25', ''),
(58, '101 Fresh', 165, 'http://101.ru/?an=port_channel_mp3&channel=148', ''),
(59, 'Россия Топ 50', 165, 'http://101.ru/?an=port_channel_mp3&channel=34', ''),
(60, 'Попса 101', 165, 'http://101.ru/?an=port_channel_mp3&channel=155', ''),
(61, 'Украина', 165, 'http://101.ru/?an=port_channel_mp3&channel=66', ''),
(62, 'Love Songs', 165, 'http://101.ru/?an=port_channel_mp3&channel=29', ''),
(63, 'Фабрика Звезд', 165, 'http://101.ru/?an=port_channel_mp3&channel=48', ''),
(64, '90\'s Pop', 165, 'http://101.ru/?an=port_channel_mp3&channel=130', ''),
(65, 'Евровидение', 165, 'http://101.ru/?an=port_channel_mp3&channel=147', ''),
(66, 'Rock', 166, 'http://101.ru/?an=port_channel_mp3&channel=69', ''),
(67, 'Rock Hits', 166, 'http://101.ru/?an=port_channel_mp3&channel=160', ''),
(68, 'Modern Rock', 166, 'http://101.ru/?an=port_channel_mp3&channel=16', ''),
(69, 'Metal', 166, 'http://101.ru/?an=port_channel_mp3&channel=211', ''),
(70, 'Thrash', 166, 'http://101.ru/?an=port_channel_mp3&channel=73', ''),
(71, 'Alternative', 166, 'http://101.ru/?an=port_channel_mp3&channel=176', ''),
(72, 'Русский Рок', 166, 'http://101.ru/?an=port_channel_mp3&channel=42', ''),
(73, 'Наш Метал', 166, 'http://101.ru/?an=port_channel_mp3&channel=257', ''),
(74, 'Instrumental Rock', 166, 'http://101.ru/?an=port_channel_mp3&channel=183', ''),
(75, 'Rock Guitar', 166, 'http://101.ru/?an=port_channel_mp3&channel=70', ''),
(76, 'Route 101', 166, 'http://101.ru/?an=port_channel_mp3&channel=185', ''),
(77, 'Rock Remakes', 166, 'http://101.ru/?an=port_channel_mp3&channel=71', ''),
(78, 'Rock\'n\'Roll', 166, 'http://101.ru/?an=port_channel_mp3&channel=89', ''),
(79, 'Indie', 166, 'http://101.ru/?an=port_channel_mp3&channel=152', ''),
(80, 'BritPop', 166, 'http://101.ru/?an=port_channel_mp3&channel=206', ''),
(81, 'День Победы', 167, 'http://101.ru/?an=port_channel_mp3&channel=178', ''),
(82, 'Шансон', 167, 'http://101.ru/?an=port_channel_mp3&channel=50', ''),
(83, 'Кабаре «Шансон»', 167, 'http://101.ru/?an=port_channel_mp3&channel=49', ''),
(84, 'Русские Песни', 167, 'http://101.ru/?an=port_channel_mp3&channel=41', ''),
(85, 'Авторская Песня', 167, 'http://101.ru/?an=port_channel_mp3&channel=35', ''),
(86, 'Армейские песни', 167, 'http://101.ru/?an=port_channel_mp3&channel=37', ''),
(87, 'Swing', 168, 'http://101.ru/?an=port_channel_mp3&channel=90', ''),
(88, 'Jazz', 168, 'http://101.ru/?an=port_channel_mp3&channel=85', ''),
(89, 'Smooth Jazz', 168, 'http://101.ru/?an=port_channel_mp3&channel=31', ''),
(90, 'Blues', 168, 'http://101.ru/?an=port_channel_mp3&channel=76', ''),
(91, 'Funk & Soul', 168, 'http://101.ru/?an=port_channel_mp3&channel=84', ''),
(92, 'Русский Рэп', 169, 'http://101.ru/?an=port_channel_mp3&channel=43', ''),
(93, 'R\'n\'B', 169, 'http://101.ru/?an=port_channel_mp3&channel=15', ''),
(94, 'Gangsta & Hip-Hop', 169, 'http://101.ru/?an=port_channel_mp3&channel=8', ''),
(95, 'Французский Рэп', 169, 'http://101.ru/?an=port_channel_mp3&channel=240', ''),
(96, 'Анекдоты', 170, 'http://101.ru/?an=port_channel_mp3&channel=20', ''),
(97, 'Юмор Non-Stop', 170, 'http://101.ru/?an=port_channel_mp3&channel=22', ''),
(98, 'Классика Жанра', 170, 'http://101.ru/?an=port_channel_mp3&channel=21', ''),
(99, 'Мурзилки Int.', 170, 'http://101.ru/?an=port_channel_mp3&channel=3', ''),
(100, 'Детские Песни', 171, 'http://101.ru/?an=port_channel_mp3&channel=93', ''),
(101, 'Колыбельная', 171, 'http://101.ru/?an=port_channel_mp3&channel=95', ''),
(102, 'Григорий Гладков', 171, 'http://101.ru/?an=port_channel_mp3&channel=94', ''),
(103, 'Детские Сказки', 171, 'http://101.ru/?an=port_channel_mp3&channel=222', ''),
(104, 'СССР 30-50', 172, 'http://101.ru/?an=port_channel_mp3&channel=46', ''),
(105, 'СССР 50-70', 172, 'http://101.ru/?an=port_channel_mp3&channel=47', ''),
(106, 'ВИА', 172, 'http://101.ru/?an=port_channel_mp3&channel=36', ''),
(107, 'New York', 172, 'http://101.ru/?an=port_channel_mp3&channel=64', ''),
(108, 'Польское Ретро Plus', 172, 'http://101.ru/?an=port_channel_mp3&channel=165', ''),
(109, 'Elvis Presley', 173, 'http://101.ru/?an=port_channel_mp3&channel=111', ''),
(110, 'The Beatles', 173, 'http://101.ru/?an=port_channel_mp3&channel=55', ''),
(111, 'The Rolling Stones', 173, 'http://101.ru/?an=port_channel_mp3&channel=117', ''),
(112, 'Pink Floyd', 173, 'http://101.ru/?an=port_channel_mp3&channel=53', ''),
(113, 'Queen', 173, 'http://101.ru/?an=port_channel_mp3&channel=54', ''),
(114, 'U2', 173, 'http://101.ru/?an=port_channel_mp3&channel=109', ''),
(115, 'Scorpions', 173, 'http://101.ru/?an=port_channel_mp3&channel=113', ''),
(116, 'Metallica', 173, 'http://101.ru/?an=port_channel_mp3&channel=123', ''),
(117, 'Deep Purple', 173, 'http://101.ru/?an=port_channel_mp3&channel=125', ''),
(118, 'Linkin Park', 173, 'http://101.ru/?an=port_channel_mp3&channel=149', ''),
(119, 'Машина Времени', 173, 'http://101.ru/?an=port_channel_mp3&channel=59', ''),
(120, 'ДДТ', 173, 'http://101.ru/?an=port_channel_mp3&channel=112', ''),
(121, 'Алиса', 173, 'http://101.ru/?an=port_channel_mp3&channel=137', ''),
(122, 'Ария', 173, 'http://101.ru/?an=port_channel_mp3&channel=118', ''),
(123, 'Виктор Цой и группа «КИНО»', 173, 'http://101.ru/?an=port_channel_mp3&channel=103', ''),
(124, 'БГ & Аквариум', 173, 'http://101.ru/?an=port_channel_mp3&channel=57', ''),
(125, 'Чиж & Co', 173, 'http://101.ru/?an=port_channel_mp3&channel=221', ''),
(126, 'Наутилус Помпилиус', 173, 'http://101.ru/?an=port_channel_mp3&channel=126', ''),
(127, 'Пикник', 173, 'http://101.ru/?an=port_channel_mp3&channel=157', ''),
(128, 'Агата Кристи', 173, 'http://101.ru/?an=port_channel_mp3&channel=139', ''),
(129, 'Чайф', 173, 'http://101.ru/?an=port_channel_mp3&channel=106', ''),
(130, 'Парк Горького', 173, 'http://101.ru/?an=port_channel_mp3&channel=182', ''),
(131, 'Король и Шут', 173, 'http://101.ru/?an=port_channel_mp3&channel=191', ''),
(132, 'Любэ', 173, 'http://101.ru/?an=port_channel_mp3&channel=158', ''),
(133, 'Сплин', 173, 'http://101.ru/?an=port_channel_mp3&channel=129', ''),
(134, 'БИ-2', 173, 'http://101.ru/?an=port_channel_mp3&channel=135', ''),
(135, 'Michael Jackson', 173, 'http://101.ru/?an=port_channel_mp3&channel=52', ''),
(136, 'Madonna', 173, 'http://101.ru/?an=port_channel_mp3&channel=128', ''),
(137, 'Mylene Farmer', 173, 'http://101.ru/?an=port_channel_mp3&channel=166', ''),
(138, 'Sandra', 173, 'http://101.ru/?an=port_channel_mp3&channel=179', ''),
(139, 'Robbie Williams', 173, 'http://101.ru/?an=port_channel_mp3&channel=138', ''),
(140, 'Elton John', 173, 'http://101.ru/?an=port_channel_mp3&channel=142', ''),
(141, 'ABBA', 173, 'http://101.ru/?an=port_channel_mp3&channel=104', ''),
(142, 'Boney M.', 173, 'http://101.ru/?an=port_channel_mp3&channel=114', ''),
(143, 'Modern Talking', 173, 'http://101.ru/?an=port_channel_mp3&channel=115', ''),
(144, 'Depeche Mode', 173, 'http://101.ru/?an=port_channel_mp3&channel=105', ''),
(145, 'Enigma', 173, 'http://101.ru/?an=port_channel_mp3&channel=175', ''),
(146, 'Муслим Магомаев', 173, 'http://101.ru/?an=port_channel_mp3&channel=156', ''),
(147, 'Алла Пугачёва', 173, 'http://101.ru/?an=port_channel_mp3&channel=56', ''),
(148, 'Филипп Киркоров', 173, 'http://101.ru/?an=port_channel_mp3&channel=116', ''),
(149, 'Стас Михайлов', 173, 'http://101.ru/?an=port_channel_mp3&channel=154', ''),
(150, 'Ласковый Май', 173, 'http://101.ru/?an=port_channel_mp3&channel=119', ''),
(151, 'Руки Вверх!', 173, 'http://101.ru/?an=port_channel_mp3&channel=163', ''),
(152, 'Высоцкий', 173, 'http://101.ru/?an=port_channel_mp3&channel=58', ''),
(153, 'Михаил Круг', 173, 'http://101.ru/?an=port_channel_mp3&channel=110', ''),
(154, 'Александр Розенбаум', 173, 'http://101.ru/?an=port_channel_mp3&channel=153', ''),
(155, 'Елена Ваенга', 173, 'http://101.ru/?an=port_channel_mp3&channel=171', ''),
(156, 'Каста', 173, 'http://101.ru/?an=port_channel_mp3&channel=121', ''),
(157, 'Баста aka НоГГано', 173, 'http://101.ru/?an=port_channel_mp3&channel=162', ''),
(158, 'Italia', 174, 'http://101.ru/?an=port_channel_mp3&channel=65', ''),
(159, 'France', 174, 'http://101.ru/?an=port_channel_mp3&channel=68', ''),
(160, 'Французский Шансон', 174, 'http://101.ru/?an=port_channel_mp3&channel=146', ''),
(161, 'Latino', 174, 'http://101.ru/?an=port_channel_mp3&channel=63', ''),
(162, 'Country', 174, 'http://101.ru/?an=port_channel_mp3&channel=78', ''),
(163, 'Reggae', 174, 'http://101.ru/?an=port_channel_mp3&channel=88', ''),
(164, 'Архив Варшавского Договора', 174, 'http://101.ru/?an=port_channel_mp3&channel=177', ''),
(165, 'Русское Регги', 174, 'http://101.ru/?an=port_channel_mp3&channel=44', ''),
(166, 'Музыка Востока', 174, 'http://101.ru/?an=port_channel_mp3&channel=67', ''),
(167, 'Татарская Поп-музыка', 174, 'http://101.ru/?an=port_channel_mp3&channel=246', ''),
(168, 'Татарская Народная Музыка', 174, 'http://101.ru/?an=port_channel_mp3&channel=262', ''),
(169, 'Армения', 174, 'http://101.ru/?an=port_channel_mp3&channel=60', ''),
(170, 'Кавказ Hits', 174, 'http://101.ru/?an=port_channel_mp3&channel=39', ''),
(171, 'Японская Музыка', 174, 'http://101.ru/?an=port_channel_mp3&channel=62', ''),
(172, 'Цыганская Музыка', 174, 'http://101.ru/?an=port_channel_mp3&channel=61', ''),
(173, 'Этника', 175, 'http://101.ru/?an=port_channel_mp3&channel=51', ''),
(174, 'Русские Народные', 175, 'http://101.ru/?an=port_channel_mp3&channel=40', ''),
(175, 'Духовная Музыка', 175, 'http://101.ru/?an=port_channel_mp3&channel=38', ''),
(176, 'Опера', 176, 'http://101.ru/?an=port_channel_mp3&channel=96', ''),
(177, 'Pop Classical Music', 176, 'http://101.ru/?an=port_channel_mp3&channel=97', ''),
(178, 'Классическая Музыка', 176, 'http://101.ru/?an=port_channel_mp3&channel=98', ''),
(179, 'Авторадио', 177, 'http://101.ru/?an=port_channel_mp3&channel=100', ''),
(180, 'Радио ENERGY', 177, 'http://101.ru/?an=port_channel_mp3&channel=99', ''),
(181, 'Радио Romantika', 177, 'http://101.ru/?an=port_channel_mp3&channel=101', ''),
(182, 'Юмор FM', 177, 'http://101.ru/?an=port_channel_mp3&channel=102', ''),
(183, 'Like FM', 177, 'http://101.ru/?an=port_channel_mp3&channel=219', ''),
(184, 'Relax FM', 177, 'http://101.ru/?an=port_channel_mp3&channel=200', ''),
(185, 'Comedy Radio', 177, 'http://101.ru/?an=port_channel_mp3&channel=202', ''),
(186, 'Детское Радио', 177, 'http://101.ru/?an=port_channel_mp3&channel=199', ''),
(187, 'Megapolis', 177, 'http://101.ru/?an=port_channel_mp3&channel=180', ''),
(188, 'Радиола', 177, 'http://101.ru/?an=port_channel_mp3&channel=209', ''),
(189, 'Весна FM', 177, 'http://101.ru/?an=port_channel_mp3&channel=188', ''),
(190, 'Восток FM', 177, 'http://101.ru/?an=port_channel_mp3&channel=189', ''),
(191, 'Радио ВЕРА', 177, 'http://101.ru/?an=port_channel_mp3&channel=207', ''),
(192, 'Комсомольская Правда', 177, 'http://101.ru/?an=port_channel_mp3&channel=194', '');

-- --------------------------------------------------------

--
-- Table structure for table `safe_execs`
--

DROP TABLE IF EXISTS `safe_execs`;
CREATE TABLE IF NOT EXISTS `safe_execs` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COMMAND` text NOT NULL,
  `ADDED` datetime DEFAULT NULL,
  `EXCLUSIVE` int(3) NOT NULL DEFAULT 0,
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `ON_COMPLETE` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13925 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scenes`
--

DROP TABLE IF EXISTS `scenes`;
CREATE TABLE IF NOT EXISTS `scenes` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `BACKGROUND` varchar(255) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `HIDDEN` int(3) NOT NULL DEFAULT 0,
  `WALLPAPER` varchar(255) NOT NULL DEFAULT '',
  `WALLPAPER_FIXED` int(3) NOT NULL DEFAULT 0,
  `WALLPAPER_NOREPEAT` int(3) NOT NULL DEFAULT 0,
  `AUTO_SCALE` int(3) NOT NULL DEFAULT 0,
  `SYSTEM` varchar(255) NOT NULL DEFAULT '',
  `DEVICES_BACKGROUND` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `scenes`
--

INSERT INTO `scenes` (`ID`, `TITLE`, `BACKGROUND`, `PRIORITY`, `HIDDEN`, `WALLPAPER`, `WALLPAPER_FIXED`, `WALLPAPER_NOREPEAT`, `AUTO_SCALE`, `SYSTEM`, `DEVICES_BACKGROUND`) VALUES
(1, 'Scene 1', '', 100, 0, '/cms/scenes/backgrounds/simple_blue_background-wallpaper-1920x1200.jpg', 0, 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scheduler_points`
--

DROP TABLE IF EXISTS `scheduler_points`;
CREATE TABLE IF NOT EXISTS `scheduler_points` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `ENABLED` int(3) NOT NULL DEFAULT 1,
  `VALUE` varchar(255) NOT NULL DEFAULT '',
  `SET_TIME` varchar(50) NOT NULL DEFAULT '',
  `SET_DAYS` varchar(50) NOT NULL DEFAULT '',
  `TASK_ID` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduler_tasks`
--

DROP TABLE IF EXISTS `scheduler_tasks`;
CREATE TABLE IF NOT EXISTS `scheduler_tasks` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `VALUE_TYPE` int(3) NOT NULL DEFAULT 0,
  `VALUE_TITLE` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `LINKED_OBJECT` varchar(100) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(100) NOT NULL DEFAULT '',
  `LINKED_METHOD` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scripts`
--

DROP TABLE IF EXISTS `scripts`;
CREATE TABLE IF NOT EXISTS `scripts` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `TYPE` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `XML` text DEFAULT NULL,
  `CATEGORY_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EXECUTED` datetime DEFAULT NULL,
  `EXECUTED_PARAMS` varchar(255) DEFAULT NULL,
  `RUN_PERIODICALLY` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `RUN_DAYS` char(30) NOT NULL DEFAULT '',
  `RUN_TIME` char(30) NOT NULL DEFAULT '',
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `AUTO_LINK` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `AUTO_LINK_AVAILABLE` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `UPDATED` datetime DEFAULT NULL,
  `EXECUTED_SRC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `scripts`
--

INSERT INTO `scripts` (`ID`, `TITLE`, `CODE`, `DESCRIPTION`, `TYPE`, `XML`, `CATEGORY_ID`, `EXECUTED`, `EXECUTED_PARAMS`, `RUN_PERIODICALLY`, `RUN_DAYS`, `RUN_TIME`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `AUTO_LINK`, `AUTO_LINK_AVAILABLE`, `UPDATED`, `EXECUTED_SRC`) VALUES
(8, 'timeNow', 'say(timeNow(),2);', '', 0, '', 0, '2018-07-05 00:12:30', '', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(3, 'rssProcess', '/*\r\n$params[\'URL\'] --link\r\n$params[\'TITLE\'] -- title\r\n$params[\'BODY\'] -- body\r\n$params[\'CHANNEL_ID\'] -- channel ID\r\n$params[\'CHANNEL_TITLE\'] -- channed title\r\n\r\n*/\r\n\r\n//say($params[\'TITLE\']); // reading news', '', 0, '', 0, '2014-10-30 14:57:24', 'a:10:{s:10:\"CHANNEL_ID\";s:1:\"4\";s:5:\"ADDED\";s:19:\"2014-10-16 16:36:00\";s:5:\"TITLE\";s:184:\"Белтелерадиокомпания: Надеемся, решение украинской стороны о закрытии \"Беларусь 24\" не окончательное\";s:4:\"BODY\";s:386:\"<img src=\"http://img.tyt.by/thumbnails/n/07/2', 0, '', '', '', '', 0, 0, NULL, NULL),
(42, 'maintenance', 'require(ROOT.\'scripts/startup_maintenance.php\');', '', 0, NULL, 0, '2020-04-08 02:00:00', 'a:2:{s:5:\"m_c_s\";a:1:{i:0;s:18:\"script.maintenance\";}s:10:\"no_session\";s:1:\"1\";}', 1, '0,1,2,3,4,5,6', '02:00', '', '', 0, 0, '2018-10-30 22:58:35', '/api.php/script/maintenance?m_c_s[0]=script.maintenance&no_session=1'),
(15, 'readWeatherToday', '$weather.=\"Сегодня ожидается \".str_replace(\'&deg;\',\' \',getGlobal(\'weatherToday\'));\r\n$weather.=\". Завтра \".str_replace(\'&deg;\',\' \',getGlobal(\'weatherTomorrow\'));\r\n$weather.=\". Сейчас на улице \".getGlobal(\'ow_fact.temperature\').\'.\';\r\n$weather=str_replace(\'&deg;\',\'\',$weather);\r\nsay($weather,2);', '', 0, '', 0, '2018-07-05 00:12:30', 'a:2:{i:0;s:12:\"погода\";i:1;s:2:\"а\";}', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(18, 'playFavoriteMusic', '// вытягиваем историю из переменной\r\n$alreadyPlayed=gg(\"AlreadyPlayedMusic\");\r\nif (!$alreadyPlayed) {\r\n $alreadyPlayed=\'0\';\r\n}\r\n\r\n// выбираем случайную папку\r\n$rec=SQLSelectOne(\"SELECT * FROM media_favorites WHERE ID NOT IN (\".$alreadyPlayed.\") ORDER BY RAND()\");\r\n\r\nif (!$rec[\'ID\']) {\r\n // папок больше не осталось, поэтому выбираем случайную и сбрасываем истоирю\r\n $rec=SQLSelectOne(\"SELECT * FROM media_favorites ORDER BY RAND()\");\r\n $alreadyPlayed=\'0\';\r\n}\r\n\r\n\r\nif ($rec[\'ID\']) {\r\n\r\n // добавляем выбранную папку в историю\r\n $alreadyPlayed.=\',\'.$rec[\'ID\'];\r\n sg(\"AlreadyPlayedMusic\",$alreadyPlayed);\r\n\r\n // запускаем на проигрывание\r\n $collection=SQLSelectOne(\"SELECT * FROM collections WHERE ID=\".(int)$rec[\'COLLECTION_ID\']);\r\n $path=$collection[\'PATH\'].$rec[\'PATH\'];\r\n playMedia($path);\r\n //setTimeOut(\'VLCPlayer_update\',\"callMethod(\'VLCPlayer.update\');\",10);\r\n\r\n}', '', 0, '', 0, '2018-07-05 00:12:30', '', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(19, 'playPause', 'getURL(\'http://localhost/popup/app_player.html?ajax=1&command=pause\',0);', '', 0, '', 0, '2016-04-05 16:37:52', '', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(21, 'reportStatus', '$res=\'\';\r\n if (gg(\'Security.stateColor\')==\'green\' && gg(\'System.stateColor\')==\'green\' && gg(\'Communication.stateColor\')==\'green\') {\r\n  $res=\'Все системы работают в штатном режиме\';\r\n } else {\r\n  if (gg(\'Security.stateColor\')!=\'green\') {\r\n   $res.=\" Проблема безопасности: \".getGlobal(\'Security.stateDetails\');\r\n  }\r\n  if (gg(\'System.stateColor\')!=\'green\') {\r\n   $res.=\" Системная проблема: \".getGlobal(\'System.stateDetails\');\r\n  }  \r\n  if (gg(\'Communication.stateColor\')!=\'green\') {\r\n   $res.=\" Проблема связи: \".getGlobal(\'Communication.stateDetails\');\r\n  }  \r\n }\r\n say($res,5);', '', 0, '', 0, '2018-10-30 13:09:10', 'a:1:{i:0;s:27:\"статус системы\";}', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(29, 'startUp', 'runScript(\'tellIPAddress\', array());\r\n', '', 0, '', 7, '2022-12-27 19:45:55', 'a:3:{s:5:\"m_c_s\";a:1:{i:0;s:9:\"script.29\";}s:5:\"r_s_s\";s:1:\"1\";s:10:\"no_session\";s:1:\"1\";}', 0, '', '00:00', '', '', 0, 0, '2019-09-10 09:57:56', '/api.php/script/29?m_c_s[0]=script.29&r_s_s=1&no_session=1'),
(30, 'checkFreeSpace', '$max_usage=90; //%\r\n$output=array();\r\nexec(\'df\',$output);\r\n//var_dump($output);\r\n$problems=0;\r\n$problems_details=\'\';\r\nforeach($output as $line) {\r\n if (preg_match(\'/(\\d+)% (\\/.+)/\',$line,$m))\r\n   $proc=$m[1];\r\n   $path=$m[2];\r\n   if ($proc>$max_usage) {\r\n    $problems++;\r\n    $problems_details.=\"$path: $proc; \";\r\n   }\r\n   //echo \"$path: $proc%<br/>\";\r\n}\r\nsg(\"ThisComputer.SpaceProblems\",$problems);\r\nsg(\"ThisComputer.SpaceProblems_Details\",$problems_details);\r\n\r\nsetTimeOut(\'checkFreeSpace\',\'runScript(\"checkFreeSpace\");\',5*60);', '', 0, '', 4, '2020-10-12 00:10:02', 'a:2:{s:5:\"m_c_s\";a:1:{i:0;s:21:\"script.checkFreeSpace\";}s:10:\"no_session\";s:1:\"1\";}', 1, '0,1,2,3,4,5,6', '00:00', '', '', 0, 0, '2018-10-30 22:58:17', '/objects/?job=1956804'),
(31, 'shutDown', '$filename  = ROOT . \'/database_backup/db.sql\';\r\n$mysqlDumpPath = \"/usr/bin/mysqldump\";\r\n$mysqlDumpParam = \" --user=\" . DB_USER . \" --password=\" . DB_PASSWORD;\r\n$mysqlDumpParam .= \" --no-create-db --add-drop-table --databases \" . DB_NAME;\r\nif (file_exists($filename)) rename($filename, $filename . \'.prev\');\r\nexec($mysqlDumpPath . $mysqlDumpParam . \" > \" . $filename);\r\nsay(LANG_GENERAL_STARTING_SHUTDOWN,2);\r\nsetTimeout(\"shutdownTimer\",\"safe_exec(\'shutdown -h now\');\",15);', '', 0, '', 4, '2017-03-10 16:11:41', 'a:2:{s:5:\"VALUE\";s:7:\"clicked\";s:9:\"OLD_VALUE\";s:7:\"clicked\";}', 0, '', '00:00', '', '', 0, 0, '2018-10-30 22:58:03', NULL),
(32, 'rebootSystem', '$filename  = ROOT . \'/database_backup/db.sql\';\r\n$mysqlDumpPath = \"/usr/bin/mysqldump\";\r\n$mysqlDumpParam = \" --user=\" . DB_USER . \" --password=\" . DB_PASSWORD;\r\n$mysqlDumpParam .= \" --no-create-db --add-drop-table --databases \" . DB_NAME;\r\nif (file_exists($filename)) rename($filename, $filename . \'.prev\');\r\nexec($mysqlDumpPath . $mysqlDumpParam . \" > \" . $filename);\r\nsay(LANG_GENERAL_STARTING_REBOOT,2);\r\nsetTimeout(\"shutdownTimer\",\"safe_exec(\'shutdown -r now\');\",15);', '', 0, '', 4, '2020-10-12 00:10:34', 'a:4:{s:5:\"VALUE\";s:7:\"clicked\";s:9:\"OLD_VALUE\";s:7:\"clicked\";s:5:\"m_c_s\";a:1:{i:0;s:42:\"script.32.56288fc7e9b4a858ed0109178d38fd55\";}s:10:\"no_session\";s:1:\"1\";}', 0, '', '00:00', '', '', 0, 0, '2018-10-30 22:57:42', '/api.php/script/32?VALUE=clicked&OLD_VALUE=clicked&m_c_s[0]=script.32.56288fc7e9b4a858ed0109178d38fd55&no_session=1'),
(34, 'tellIPAddress', 'runScript(\'updateCPUId\');\r\n$res=exec(\'hostname -I\');\r\n$ipv6_regex=\'/(\\w{4})/is\';\r\n$res = trim(preg_replace($ipv6_regex,\'\',$res));\r\n$ipv6_regex=\'/:(\\w+)/is\';\r\n$res = trim(preg_replace($ipv6_regex,\'\',$res));\r\n$res = trim(str_replace(\':\',\'\',$res));\r\nsay(LANG_GENERAL_IP_ADDRESS.\" \".$res,2);', '', 0, '', 0, '2022-12-27 19:45:55', 'a:1:{s:6:\"script\";s:13:\"tellIPAddress\";}', 0, '', '00:00', '', '', 0, 0, '2018-10-30 22:59:44', '/api.php/script/29?m_c_s[0]=script.29&r_s_s=1&no_session=1'),
(35, 'weatherReceived', 'setGlobal(\'ThisComputer.tempOutside\',getGlobal(\'ow_fact.temperature\'));', '', 0, '', 0, '2016-04-08 15:00:01', '', 0, '', '00:00', '', '', 0, 0, NULL, NULL),
(36, 'updateCPUId', '$data=trim(exec(\"cat /proc/cpuinfo | grep Serial | cut -d \':\' -f 2\"));\r\n$data=ltrim($data,\'0\');\r\necho $data;\r\nif ($data) {\r\n setGlobal(\"ThisComputer.Serial\",$data); \r\n}', '', 0, '', 0, '2022-12-27 19:45:55', 'a:1:{s:6:\"script\";s:11:\"updateCPUId\";}', 0, '', '00:00', '', '', 0, 0, NULL, '/api.php/script/29?m_c_s[0]=script.29&r_s_s=1&no_session=1'),
(37, 'Hourly', 'echo \"OK\";', '', 0, '', 7, '2022-08-25 14:00:00', '', 0, '', '00:00', '', '', 0, 0, '2018-10-30 23:00:05', '/api.php/method/ClockChime.onNewHour?m_c_s[0]=ClockChime.onNewHour&r_s_m=1&no_session=1'),
(43, 'filesClearOld', 'keepLatestLimitedBySize(\'/var/www/media/webcam\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/media/webcam_sorted\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/backup\',500*1024*1024); //500Mb\r\nkeepLatestLimitedBySize(\'/var/www/cached\',50*1024*1024); //50Mb', 'Check old files', 0, NULL, 0, '2022-08-25 14:00:00', 'a:2:{s:5:\"m_c_s\";a:1:{i:0;s:20:\"script.filesClearOld\";}s:10:\"no_session\";s:1:\"1\";}', 1, '0,1,2,3,4,5,6', '04:00', '', '', 0, 0, NULL, '/api.php/method/ClockChime.onNewHour?m_c_s[0]=ClockChime.onNewHour&r_s_m=1&no_session=1');

-- --------------------------------------------------------

--
-- Table structure for table `script_categories`
--

DROP TABLE IF EXISTS `script_categories`;
CREATE TABLE IF NOT EXISTS `script_categories` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `script_categories`
--

INSERT INTO `script_categories` (`ID`, `TITLE`) VALUES
(8, '<#LANG_GENERAL_SECURITY#>'),
(4, '<#LANG_GENERAL_OPERATIONAL_MODES#>'),
(5, '<#LANG_GENERAL_SENSORS#>'),
(7, '<#LANG_MODULE_EVENTS#>');

-- --------------------------------------------------------

--
-- Table structure for table `security_rules`
--

DROP TABLE IF EXISTS `security_rules`;
CREATE TABLE IF NOT EXISTS `security_rules` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OBJECT_TYPE` char(20) NOT NULL DEFAULT '',
  `OBJECT_ID` int(10) NOT NULL DEFAULT 0,
  `TERMINALS` varchar(255) NOT NULL DEFAULT '',
  `TERMINALS_EXCEPT` int(3) NOT NULL DEFAULT 0,
  `USERS` varchar(255) NOT NULL DEFAULT '',
  `USERS_EXCEPT` int(3) NOT NULL DEFAULT 0,
  `TIMES` varchar(255) NOT NULL DEFAULT '',
  `TIMES_EXCEPT` int(3) NOT NULL DEFAULT 0,
  `CONDITION_ACTIVE` int(3) NOT NULL DEFAULT 0,
  `CONDITION_LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `CONDITION_LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `CONDITION` int(3) NOT NULL DEFAULT 0,
  `CONDITION_VALUE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PRIORITY` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `HR` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `TYPE` varchar(59) NOT NULL DEFAULT '',
  `NOTES` text NOT NULL,
  `VALUE` text DEFAULT NULL,
  `DEFAULTVALUE` varchar(255) NOT NULL DEFAULT '',
  `URL` varchar(255) NOT NULL DEFAULT '',
  `URL_TITLE` varchar(255) NOT NULL DEFAULT '',
  `DATA` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ID`, `PRIORITY`, `HR`, `TITLE`, `NAME`, `TYPE`, `NOTES`, `VALUE`, `DEFAULTVALUE`, `URL`, `URL_TITLE`, `DATA`) VALUES
(7, 0, 0, 'Days to show in \"soon\" section', 'APP_CALENDAR_SOONLIMIT', 'text', '', '6', '6', '', '', ''),
(8, 0, 0, 'Show recently done items', 'APP_CALENDAR_SHOWDONE', 'yesno', '', '1', '1', '', '', ''),
(9, 0, 0, 'Scene width', 'SCENES_WIDTH', 'text', '', '803', '803', '', '', ''),
(24, 0, 0, 'Scene height', 'SCENES_HEIGHT', 'text', '', '606', '606', '', '', ''),
(61, 0, 0, 'Voice notifications language', 'VOICE_LANGUAGE', 'text', '', 'ru', 'en', '', '', ''),
(62, 0, 0, 'Color theme', 'THEME', 'text', '', 'light', 'dark', '', '', ''),
(44, 0, 0, 'Play sound signal before speaking', 'SPEAK_SIGNAL', 'onoff', '', '1', '1', '', '', ''),
(108, 0, 0, 'Language', 'SITE_LANGUAGE', 'text', '', 'ru', 'en', '', '', ''),
(60, 29, 0, 'After SAY (code)', 'HOOK_AFTER_SAY', 'text', '', '', '', '', '', ''),
(69, 0, 0, 'Path to store backup', 'BACKUP_PATH', 'text', '', '', '', '', '', ''),
(72, 0, 0, 'Computer\'s name', 'GENERAL_ALICE_NAME', 'text', '', '', '', '', '', ''),
(109, 0, 0, 'Time zone', 'SITE_TIMEZONE', 'text', '', 'Europe/Athens', 'Europe/Moscow', '', '', ''),
(81, 0, 0, 'HOOK_EVENT_SAY', 'HOOK_EVENT_SAY', 'json', '', '{\"rhvoice\":{\"filter\":\"\"},\"connect\":{\"filter\":\"\"},\"patterns\":{\"filter\":\"\"},\"terminals\":{\"filter\":\"\"}}', '', '', '', ''),
(82, 0, 0, 'HOOK_EVENT_HOURLY', 'HOOK_EVENT_HOURLY', 'json', '', '{\"optimizer\":{\"filter\":\"\"},\"connect\":{\"filter\":\"\"},\"app_openweather\":{\"filter\":\"\"},\"terminals\":{\"filter\":\"\"}}', '', '', '', ''),
(83, 0, 0, 'Bar-code reading (code)', 'HOOK_BARCODE', 'text', '', '', '', '', '', ''),
(84, 0, 0, 'Playmedia (code)', 'HOOK_PLAYMEDIA', 'text', '', '', '', '', '', ''),
(85, 0, 0, 'Before PlaySound (code)', 'HOOK_BEFORE_PLAYSOUND', 'text', '', '', '', '', '', ''),
(86, 0, 0, 'After PlaySound (code)', 'HOOK_AFTER_PLAYSOUND', 'text', '', '', '', '', '', ''),
(87, 0, 0, 'HOOK_EVENT_COMMAND', 'HOOK_EVENT_COMMAND', 'json', '', '{\"devices\":{\"filter\":\"\"},\"patterns\":{\"filter\":\"\"},\"scripts\":{\"filter\":\"\"}}', '', '', '', ''),
(88, 0, 0, 'HOOK_EVENT_SAYREPLY', 'HOOK_EVENT_SAYREPLY', 'json', '', '{\"terminals\":{\"filter\":\"\",\"priority\":99},\"rhvoice\":{\"filter\":\"\",\"priority\":100}}', '', '', '', ''),
(89, 0, 0, 'HOOK_EVENT_SAYTO', 'HOOK_EVENT_SAYTO', 'json', '', '{\"terminals\":{\"filter\":\"\",\"priority\":99},\"rhvoice\":{\"filter\":\"\"}}', '', '', '', ''),
(90, 0, 0, 'HOOK_EVENT_ASK', 'HOOK_EVENT_ASK', 'json', '', '{\"terminals\":{\"filter\":\"\",\"priority\":99},\"rhvoice\":{\"filter\":\"\"}}', '', '', '', ''),
(91, 0, 0, 'HOOK_EVENT_MINUTELY', 'HOOK_EVENT_MINUTELY', 'json', '', '{\"devices\":{\"filter\":\"\"}}', '', '', '', ''),
(92, 0, 0, 'HOOK_EVENT_SAY_CACHED_READY', 'HOOK_EVENT_SAY_CACHED_READY', 'json', '', '{\"terminals\":{\"filter\":0}}', '', '', '', ''),
(93, 0, 0, 'HOOK_EVENT_PANELHOMECOLUMNRIGHT', 'HOOK_EVENT_PANELHOMECOLUMNRIGHT', 'json', '', '{\"netdata\":{\"filter\":\"\"}}', '', '', '', ''),
(94, 0, 0, 'HOOK_EVENT_DAILY', 'HOOK_EVENT_DAILY', 'json', '', '[]', '', '', '', ''),
(95, 0, 0, 'Включить эти настройки', 'CODEEDITOR_TURNONSETTINGS', 'onoff', '', '1', '', '', '', ''),
(96, 0, 0, 'Показывать строк без скролла', 'CODEEDITOR_SHOWLINE', 'select', '', '10', '', '', '', '10=10|35=35|45=45|100=100|500=500|1000=1000|99999=По высоте кода'),
(97, 0, 0, 'Минимальное количество строк для отображения', 'CODEEDITOR_MIXLINE', 'select', '', '5', '', '', '', '5=5|10=10|25=25|40=40|1=По высоте кода'),
(98, 0, 0, '\"Прыгать\" к строке с ошибкой', 'CODEEDITOR_UPTOLINE', 'onoff', '', '0', '', '', '', ''),
(99, 0, 0, 'Показывать ошибку под строкой', 'CODEEDITOR_SHOWERROR', 'onoff', '', '0', '', '', '', ''),
(100, 0, 0, 'Автозакрытие ()[]\"\"', 'CODEEDITOR_AUTOCLOSEQUOTES', 'onoff', '', '0', '', '', '', ''),
(101, 0, 0, 'Перенос длинных строк', 'CODEEDITOR_WRAPLINES', 'onoff', '', '0', '', '', '', ''),
(102, 0, 0, 'Показывать окно автозавершения', 'CODEEDITOR_AUTOCOMPLETE', 'onoff', '', '0', '', '', '', ''),
(103, 0, 0, 'Тип подсказок автозавершения', 'CODEEDITOR_AUTOCOMPLETE_TYPE', 'select', '', 'none', 'codemirror', '', '', 'none=По умолчанию|php=Только PHP|phpmjdm=PHP + MJDM Функции|mjdmuser=MJDM Функции + Пользовательские свойства/методы/скрипты|user=Пользовательские свойства/методы/скрипты|all=Всё'),
(104, 0, 0, 'Тема для редактора', 'CODEEDITOR_THEME', 'select', '', 'codemirror', 'codemirror', '', '', 'codemirror=По умолчанию|smoke_theme=SmoKE xD Theme|ambiance=Ambiance|base16-light=base16-light|dracula=Dracula|icecoder=Icecoder|material=Material|moxer=Moxer|neat=Neat'),
(105, 0, 0, 'Автосохранение кода', 'CODEEDITOR_AUTOSAVE', 'select', '', '0', '', '', '', '0=Только вручную (CTRL+O)|5=Через 5 секунд|10=Через 10 секунд|15=Через 15 секунд|30=Через 30 секунд|60=Через 1 минуту'),
(106, 0, 0, 'HOOK_EVENT_PANELBLOCKRIGHT', 'HOOK_EVENT_PANELBLOCKRIGHT', 'json', '', '{\"textfiles\":{\"filter\":\"\"}}', '', '', '', ''),
(107, 0, 0, 'HOOK_EVENT_PANELBLOCKLEFT', 'HOOK_EVENT_PANELBLOCKLEFT', 'json', '', '{\"textfiles\":{\"filter\":\"\"}}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shoplist`
--

DROP TABLE IF EXISTS `shoplist`;
CREATE TABLE IF NOT EXISTS `shoplist` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_list_items`
--

DROP TABLE IF EXISTS `shopping_list_items`;
CREATE TABLE IF NOT EXISTS `shopping_list_items` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `PRODUCT_ID` int(10) NOT NULL DEFAULT 0,
  `PRICE` float NOT NULL DEFAULT 0,
  `CODE` varchar(255) NOT NULL DEFAULT '',
  `IN_CART` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoutcast_favorites`
--

DROP TABLE IF EXISTS `shoutcast_favorites`;
CREATE TABLE IF NOT EXISTS `shoutcast_favorites` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) NOT NULL DEFAULT '',
  `STATION_ID` int(10) NOT NULL DEFAULT 0,
  `URL` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoutrooms`
--

DROP TABLE IF EXISTS `shoutrooms`;
CREATE TABLE IF NOT EXISTS `shoutrooms` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(250) NOT NULL DEFAULT '',
  `PRIORITY` int(10) NOT NULL DEFAULT 0,
  `ADDED_BY` int(10) NOT NULL DEFAULT 0,
  `ADDED` datetime DEFAULT NULL,
  `IS_PUBLIC` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

DROP TABLE IF EXISTS `shouts`;
CREATE TABLE IF NOT EXISTS `shouts` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ROOM_ID` int(10) NOT NULL DEFAULT 0,
  `MEMBER_ID` int(10) NOT NULL DEFAULT 0,
  `MESSAGE` varchar(255) NOT NULL DEFAULT '',
  `ADDED` datetime DEFAULT NULL,
  `IMPORTANCE` int(10) NOT NULL DEFAULT 0,
  `SOURCE` varchar(255) NOT NULL DEFAULT '',
  `IMAGE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_errors`
--

DROP TABLE IF EXISTS `system_errors`;
CREATE TABLE IF NOT EXISTS `system_errors` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `DETAILS` text DEFAULT NULL,
  `ACTIVE` int(3) NOT NULL DEFAULT 0,
  `LATEST_UPDATE` datetime DEFAULT NULL,
  `KEEP_HISTORY` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_errors_data`
--

DROP TABLE IF EXISTS `system_errors_data`;
CREATE TABLE IF NOT EXISTS `system_errors_data` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ERROR_ID` int(10) NOT NULL DEFAULT 0,
  `COMMENTS` text DEFAULT NULL,
  `ADDED` datetime DEFAULT NULL,
  `PROPERTIES_DATA` text DEFAULT NULL,
  `METHODS_DATA` text DEFAULT NULL,
  `SCRIPTS_DATA` text DEFAULT NULL,
  `TIMERS_DATA` text DEFAULT NULL,
  `EVENTS_DATA` text DEFAULT NULL,
  `DEBUG_DATA` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdwiki`
--

DROP TABLE IF EXISTS `tdwiki`;
CREATE TABLE IF NOT EXISTS `tdwiki` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `CONTENT` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tdwiki`
--

INSERT INTO `tdwiki` (`ID`, `NAME`, `CONTENT`) VALUES
(1, '', '<!--#\n @version 0.1 (auto-set)\n#-->\n<div tiddler=\"DefaultTiddlers\" modified=\"200610311519\" modifier=\"Serge J.\" tags=\"\">[[Notes]]</div>\r\n<div tiddler=\"MainMenu\" modified=\"200610311519\" modifier=\"Serge J.\" tags=\"\">[[Notes]]  [[FormattingInstructions]] [[MainMenu]] [[DefaultTiddlers]]</div>\r\n<div tiddler=\"FormattingInstructions\" modified=\"200607061334\" modifier=\"YourName\" tags=\"\">TiddlyWiki uses Wiki style markup, a way of lightly &quot;tagging&quot; plain text so it can be transformed into HTML. Edit this Tiddler to see samples.\\n\\n! Header Samples\\n!Header 1\\n!!Header 2\\n!!!Header 3\\n!!!!Header 4\\n!!!!!Header 5\\n\\n! Unordered Lists:\\n* Lists are where it\'s at\\n* Just use an asterisk and you\'re set\\n** To nest lists just add more asterisks...\\n***...like this\\n* The circle makes a great bullet because once you\'ve printed a list you can mark off completed items\\n* You can also nest mixed list types\\n## Like this\\n\\n! Ordered Lists\\n# Ordered lists are pretty neat too\\n# If you\'re handy with HTML and CSS you could customize the [[numbering scheme|http://www.w3schools.com/css/pr_list-style-type.asp]]\\n## To nest, just add more octothorpes (pound signs)...\\n### Like this\\n* You can also\\n** Mix list types\\n*** like this\\n# Pretty neat don\'t you think?\\n\\n! Tiddler links\\nTo create a Tiddler link, just use mixed-case WikiWord, or use [[brackets]] for NonWikiWordLinks. This is how the GTD style [[@Action]] lists are created. \\n\\nNote that existing Tiddlers are in bold and empty Tiddlers are in italics. See CreatingTiddlers for details.\\n\\n! External Links\\nYou can link to [[external sites|http://google.com]] with brackets. You can also LinkToFolders on your machine or network shares.\\n\\n! Images\\nEdit this tiddler to see how it\'s done.\\n[img[http://img110.echo.cx/img110/139/gorilla8nw.jpg]]\\n\\n!Tables\\n|!th1111111111|!th2222222222|\\n|&gt;| colspan |\\n| rowspan |left|\\n|~| right|\\n|colored| center |\\n|caption|c\\n\\nFor a complex table example, see PeriodicTable.\\n\\n! Horizontal Rules\\nYou can divide a tiddler into\\n----\\nsections by typing four dashes on a line by themselves.\\n\\n! Blockquotes\\n&lt;&lt;&lt;\\nThis is how you do an extended, wrapped blockquote so you don\'t have to put angle quotes on every line.\\n&lt;&lt;&lt;\\n&gt;level 1\\n&gt;level 1\\n&gt;&gt;level 2\\n&gt;&gt;level 2\\n&gt;&gt;&gt;level 3\\n&gt;&gt;&gt;level 3\\n&gt;&gt;level 2\\n&gt;level 1\\n\\n! Other Formatting\\n\'\'Bold\'\'\\n==Strike==\\n__Underline__\\n//Italic//\\nSuperscript: 2^^3^^=8\\nSubscript: a~~ij~~ = -a~~ji~~\\n@@highlight@@ Unfortunately highlighting is broken right now.\\n@@color(green):green colored@@\\n@@bgcolor(#ff0000):color(#ffffff):red colored@@ Hex colors are also broken right now.\\n</div>'),
(2, 'default', '<!--#\n @version 0.1 (auto-set)\n#-->\n<div tiddler=\"DefaultTiddlers\" modified=\"200610311519\" modifier=\"Serge J.\" tags=\"\">[[Notes]]</div>\r\n<div tiddler=\"MainMenu\" modified=\"200610311519\" modifier=\"Serge J.\" tags=\"\">[[Notes]]  [[FormattingInstructions]] [[MainMenu]] [[DefaultTiddlers]]</div>\r\n<div tiddler=\"FormattingInstructions\" modified=\"200607061334\" modifier=\"YourName\" tags=\"\">TiddlyWiki uses Wiki style markup, a way of lightly &quot;tagging&quot; plain text so it can be transformed into HTML. Edit this Tiddler to see samples.\\n\\n! Header Samples\\n!Header 1\\n!!Header 2\\n!!!Header 3\\n!!!!Header 4\\n!!!!!Header 5\\n\\n! Unordered Lists:\\n* Lists are where it\'s at\\n* Just use an asterisk and you\'re set\\n** To nest lists just add more asterisks...\\n***...like this\\n* The circle makes a great bullet because once you\'ve printed a list you can mark off completed items\\n* You can also nest mixed list types\\n## Like this\\n\\n! Ordered Lists\\n# Ordered lists are pretty neat too\\n# If you\'re handy with HTML and CSS you could customize the [[numbering scheme|http://www.w3schools.com/css/pr_list-style-type.asp]]\\n## To nest, just add more octothorpes (pound signs)...\\n### Like this\\n* You can also\\n** Mix list types\\n*** like this\\n# Pretty neat don\'t you think?\\n\\n! Tiddler links\\nTo create a Tiddler link, just use mixed-case WikiWord, or use [[brackets]] for NonWikiWordLinks. This is how the GTD style [[@Action]] lists are created. \\n\\nNote that existing Tiddlers are in bold and empty Tiddlers are in italics. See CreatingTiddlers for details.\\n\\n! External Links\\nYou can link to [[external sites|http://google.com]] with brackets. You can also LinkToFolders on your machine or network shares.\\n\\n! Images\\nEdit this tiddler to see how it\'s done.\\n[img[http://img110.echo.cx/img110/139/gorilla8nw.jpg]]\\n\\n!Tables\\n|!th1111111111|!th2222222222|\\n|&gt;| colspan |\\n| rowspan |left|\\n|~| right|\\n|colored| center |\\n|caption|c\\n\\nFor a complex table example, see PeriodicTable.\\n\\n! Horizontal Rules\\nYou can divide a tiddler into\\n----\\nsections by typing four dashes on a line by themselves.\\n\\n! Blockquotes\\n&lt;&lt;&lt;\\nThis is how you do an extended, wrapped blockquote so you don\'t have to put angle quotes on every line.\\n&lt;&lt;&lt;\\n&gt;level 1\\n&gt;level 1\\n&gt;&gt;level 2\\n&gt;&gt;level 2\\n&gt;&gt;&gt;level 3\\n&gt;&gt;&gt;level 3\\n&gt;&gt;level 2\\n&gt;level 1\\n\\n! Other Formatting\\n\'\'Bold\'\'\\n==Strike==\\n__Underline__\\n//Italic//\\nSuperscript: 2^^3^^=8\\nSubscript: a~~ij~~ = -a~~ji~~\\n@@highlight@@ Unfortunately highlighting is broken right now.\\n@@color(green):green colored@@\\n@@bgcolor(#ff0000):color(#ffffff):red colored@@ Hex colors are also broken right now.\\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `terminals`
--

DROP TABLE IF EXISTS `terminals`;
CREATE TABLE IF NOT EXISTS `terminals` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `HOST` varchar(255) NOT NULL DEFAULT '',
  `CANPLAY` int(3) NOT NULL DEFAULT 0,
  `PLAYER_TYPE` char(10) NOT NULL DEFAULT '',
  `PLAYER_PORT` varchar(255) NOT NULL DEFAULT '',
  `PLAYER_USERNAME` varchar(255) NOT NULL DEFAULT '',
  `PLAYER_PASSWORD` varchar(255) NOT NULL DEFAULT '',
  `IS_ONLINE` int(3) NOT NULL DEFAULT 0,
  `MAJORDROID_API` int(3) NOT NULL DEFAULT 0,
  `LATEST_REQUEST` varchar(255) NOT NULL DEFAULT '',
  `LATEST_REQUEST_TIME` datetime DEFAULT NULL,
  `LATEST_ACTIVITY` datetime DEFAULT NULL,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LEVEL_LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `PLAYER_CONTROL_ADDRESS` varchar(255) NOT NULL DEFAULT '',
  `CANTTS` int(3) NOT NULL DEFAULT 0,
  `MIN_MSG_LEVEL` varchar(255) NOT NULL DEFAULT '',
  `TTS_TYPE` char(20) NOT NULL DEFAULT '',
  `LOCATION_ID` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `terminals`
--

INSERT INTO `terminals` (`ID`, `NAME`, `TITLE`, `HOST`, `CANPLAY`, `PLAYER_TYPE`, `PLAYER_PORT`, `PLAYER_USERNAME`, `PLAYER_PASSWORD`, `IS_ONLINE`, `MAJORDROID_API`, `LATEST_REQUEST`, `LATEST_REQUEST_TIME`, `LATEST_ACTIVITY`, `LINKED_OBJECT`, `LEVEL_LINKED_PROPERTY`, `PLAYER_CONTROL_ADDRESS`, `CANTTS`, `MIN_MSG_LEVEL`, `TTS_TYPE`, `LOCATION_ID`) VALUES
(2, 'MAIN', 'Server', 'localhost', 1, 'mpd', '6600', '', '', 1, 0, '', '2019-06-24 21:50:56', '2022-12-27 19:46:13', '', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usbdevices`
--

DROP TABLE IF EXISTS `usbdevices`;
CREATE TABLE IF NOT EXISTS `usbdevices` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `SERIAL` varchar(255) NOT NULL DEFAULT '',
  `LOG` text NOT NULL,
  `LAST_FOUND` datetime DEFAULT NULL,
  `FIRST_FOUND` datetime DEFAULT NULL,
  `USER_ID` int(10) NOT NULL DEFAULT 0,
  `SCRIPT` text NOT NULL,
  `SCRIPT_ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL DEFAULT 0,
  `MESSAGE` varchar(100) NOT NULL DEFAULT '',
  `IP` varchar(20) NOT NULL DEFAULT '',
  `ADDED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL DEFAULT '',
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `EMAIL` varchar(255) NOT NULL DEFAULT '',
  `SKYPE` varchar(255) NOT NULL DEFAULT '',
  `MOBILE` varchar(255) NOT NULL DEFAULT '',
  `AVATAR` varchar(255) NOT NULL DEFAULT '',
  `PASSWORD` varchar(255) NOT NULL DEFAULT '',
  `IS_ADMIN` tinyint(3) NOT NULL DEFAULT 0,
  `IS_DEFAULT` tinyint(3) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `HOST` varchar(255) NOT NULL DEFAULT '',
  `ACTIVE_CONTEXT_ID` int(10) NOT NULL DEFAULT 0,
  `ACTIVE_CONTEXT_EXTERNAL` int(3) NOT NULL DEFAULT 0,
  `ACTIVE_CONTEXT_UPDATED` datetime DEFAULT NULL,
  `ACTIVE_CONTEXT_HISTORY` text DEFAULT NULL,
  `COLOR` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `NAME`, `EMAIL`, `SKYPE`, `MOBILE`, `AVATAR`, `PASSWORD`, `IS_ADMIN`, `IS_DEFAULT`, `LINKED_OBJECT`, `HOST`, `ACTIVE_CONTEXT_ID`, `ACTIVE_CONTEXT_EXTERNAL`, `ACTIVE_CONTEXT_UPDATED`, `ACTIVE_CONTEXT_HISTORY`, `COLOR`) VALUES
(1, 'admin', 'Admin', 'admin@smartliving.com', '', '', '', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e', 1, 1, 'admin', '', 0, 0, '2016-04-05 16:38:38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `webvars`
--

DROP TABLE IF EXISTS `webvars`;
CREATE TABLE IF NOT EXISTS `webvars` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `HOSTNAME` varchar(255) NOT NULL DEFAULT '',
  `TYPE` int(30) NOT NULL DEFAULT 0,
  `SEARCH_PATTERN` varchar(255) NOT NULL DEFAULT '',
  `CHECK_PATTERN` varchar(255) NOT NULL DEFAULT '',
  `LATEST_VALUE` text NOT NULL,
  `CHECK_LATEST` datetime DEFAULT NULL,
  `CHECK_NEXT` datetime DEFAULT NULL,
  `SCRIPT_ID` int(10) NOT NULL DEFAULT 0,
  `ONLINE_INTERVAL` int(10) NOT NULL DEFAULT 0,
  `LINKED_OBJECT` varchar(255) NOT NULL DEFAULT '',
  `LINKED_PROPERTY` varchar(255) NOT NULL DEFAULT '',
  `CODE` text DEFAULT NULL,
  `LOG` text DEFAULT NULL,
  `ENCODING` varchar(50) NOT NULL DEFAULT '',
  `AUTH` int(3) NOT NULL DEFAULT 0,
  `USERNAME` varchar(100) NOT NULL DEFAULT '',
  `PASSWORD` varchar(100) NOT NULL DEFAULT '',
  `DELHTML` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `webvars`
--

INSERT INTO `webvars` (`ID`, `TITLE`, `HOSTNAME`, `TYPE`, `SEARCH_PATTERN`, `CHECK_PATTERN`, `LATEST_VALUE`, `CHECK_LATEST`, `CHECK_NEXT`, `SCRIPT_ID`, `ONLINE_INTERVAL`, `LINKED_OBJECT`, `LINKED_PROPERTY`, `CODE`, `LOG`, `ENCODING`, `AUTH`, `USERNAME`, `PASSWORD`, `DELHTML`) VALUES
(5, 'Sunset Time', 'https://pogoda.by/', 0, 'заход: (\\d+:\\d+) \\[время', '', '21:10', '2021-05-18 12:03:40', '2022-12-28 01:28:31', 0, 18000, 'ThisComputer', 'SunSetTime', '', '2022-12-27 20:28:31 → INCORRECT VALUE: \r\n\n2022-08-25 12:02:06 → INCORRECT VALUE: \r\n\n2021-05-18 12:03:40 → NEW VALUE: \r\n21:10\n2021-05-04 21:47:36 → NEW VALUE: \r\n20:46\n2021-05-04 21:47:25 → NEW VALUE: \r\n20:46\n2021-05-04 21:45:57 → INCORRECT VALUE: \r\n\n2021-05-04 21:45:24 → INCORRECT VALUE: \r\n\n2021-05-04 21:43:34 → INCORRECT VALUE: \r\n\n2020-10-11 23:56:18 incorrect value:\n2020-04-08 05:07:20 new value:19:58\n2020-04-07 09:06:56 new value:19:56\n2020-02-13 14:28:08 new value:18:12\n2020-01-04 14:51:29 new value:17:00\n2020-01-03 16:17:53 new value:16:59\n2019-09-10 05:10:03 new value:19:39\n2019-09-10 00:09:56 new value:19:42\n2019-07-08 22:43:01 new value:21:40\n2019-06-26 20:18:28 new value:21:45\n2019-06-26 15:18:21 new value:21:44\n2019-06-25 14:17:48 new value:21:40\n2019-06-24 21:25:51 incorrect value:\n2019-06-24 16:25:54 incorrect value:\n2019-06-24 11:25:36 incorrect value:\n2019-06-24 06:25:28 incorrect value:\n2019-06-24 01:25:31 incorrect value:\n2019-06-23 20:25:13 incorrect value:\n2019-06-23 15:25:05 incorrect value:\n2019-06-23 10:25:07 incorrect value:\n2019-06-23 05:24:50 incorrect value:\n2019-06-23 00:24:42 incorrect value:\n2019-06-22 19:24:44 incorrect value:\n2019-06-22 14:24:26 incorrect value:\n2019-06-22 09:24:18 incorrect value:\n2019-06-22 04:24:21 incorrect value:\n2019-06-21 23:24:03 incorrect value:\n2019-06-21 18:23:55 incorrect value:\n2019-06-21 13:23:58 incorrect value:\n2019-06-19 21:22:42 new value:21:39\n2019-06-19 14:57:58 incorrect value:\n2019-06-19 09:57:51 incorrect value:\n2019-06-19 04:57:44 incorrect value:\n2019-06-18 23:57:37 incorrect value:', 'windows-1251', 0, '', '', 0),
(6, 'Sunrise Time', 'https://pogoda.by/', 0, 'Восход: (\\d+:\\d+),', '', '05:00', '2021-05-18 12:03:40', '2022-12-28 01:28:31', 0, 18000, 'ThisComputer', 'SunRiseTime', '', '2022-12-27 20:28:31 → INCORRECT VALUE: \r\n\n2022-08-25 12:02:06 → INCORRECT VALUE: \r\n\n2021-05-18 12:03:40 → NEW VALUE: \r\n05:00\n2021-05-04 21:47:47 → NEW VALUE: \r\n05:25\n2021-05-04 21:03:46 new value:05:25\n2020-10-11 23:56:18 new value:07:30\n2020-04-08 05:15:12 new value:06:23\n2020-04-07 09:14:46 new value:06:25\n2020-02-13 14:28:08 new value:08:33\n2020-01-04 14:51:29 new value:09:26\n2020-01-03 16:17:53 new value:09:27\n2019-09-10 05:10:04 new value:06:32\n2019-09-10 00:09:57 new value:06:31\n2019-07-08 22:43:01 new value:04:47\n2019-06-26 20:18:28 new value:04:38\n2019-06-26 15:18:21 new value:04:39\n2019-06-24 21:26:06 new value:04:43\n2019-06-24 16:25:55 incorrect value:\n2019-06-24 11:25:47 incorrect value:\n2019-06-24 06:25:50 incorrect value:\n2019-06-24 01:25:32 incorrect value:\n2019-06-23 20:25:24 incorrect value:\n2019-06-23 15:25:27 incorrect value:\n2019-06-23 10:25:08 incorrect value:\n2019-06-23 05:25:01 incorrect value:\n2019-06-23 00:25:04 incorrect value:\n2019-06-22 19:24:45 incorrect value:\n2019-06-22 14:24:37 incorrect value:\n2019-06-22 09:24:39 incorrect value:\n2019-06-22 04:24:22 incorrect value:\n2019-06-21 23:24:14 incorrect value:\n2019-06-21 18:24:17 incorrect value:\n2019-06-21 13:23:58 incorrect value:\n2019-06-20 07:22:58 new value:04:42\n2019-06-19 14:58:09 incorrect value:\n2019-06-19 09:58:02 incorrect value:\n2019-06-19 04:57:55 incorrect value:\n2019-06-18 23:57:49 incorrect value:\n2019-06-18 18:57:41 incorrect value:\n2019-06-18 13:57:34 incorrect value:\n2019-06-18 08:57:27 incorrect value:\n2019-06-18 03:57:19 incorrect value:\n2019-06-17 22:57:12 new value:04:41\n2019-06-17 17:57:03 incorrect value:\n2019-06-17 12:57:06 incorrect value:\n2019-06-17 07:56:49 incorrect value:', 'windows-1251', 0, '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
