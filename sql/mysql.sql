# $Id: mysql.sql,v 1.19 2004/04/08 22:19:05 danreese Exp $
# (c) 2004 Novell, Inc.
#
# Creates tables used by the web service API.
# --------------------------------------------------------

#
# Table structure for table `xf_webservice_build`
#

CREATE TABLE xf_webservice_build (
    id              INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id         INT(11) UNSIGNED NOT NULL,
    unix_group_name VARCHAR(30)      NOT NULL,
    target          VARCHAR(20)      NOT NULL,
    cvs_host        VARCHAR(60)      NOT NULL,
    cvs_modules     VARCHAR(255)     NOT NULL,
    start_time      INT(11)          NOT NULL,
    end_time        INT(11),
    job_id          INT(11) UNSIGNED,
    status          VARCHAR(20)      NOT NULL,
    error           VARCHAR(255)     NOT NULL DEFAULT '',
    PRIMARY KEY (id),
    KEY (user_id),
    KEY (unix_group_name),
    KEY (job_id)
)
    ENGINE = ISAM;

# --------------------------------------------------------

#
# Table structure for table `xf_webservice_publish`
#

CREATE TABLE xf_webservice_publish (
    id              INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id         INT(11) UNSIGNED NOT NULL,
    unix_group_name VARCHAR(30)      NOT NULL,
    time            INT(11)          NOT NULL,
    file_id         INT(11)          NOT NULL,
    status          VARCHAR(20)      NOT NULL DEFAULT 'active',
    error           VARCHAR(255)     NOT NULL DEFAULT '',
    PRIMARY KEY (id),
    KEY (user_id),
    KEY (unix_group_name)
)
    ENGINE = ISAM;
