.class public Lcom/neusoft/qdrivelink/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APP_LANGUAGE:Ljava/lang/String; = "APP_LANGUAGE"

.field public static final APP_NAME:Ljava/lang/String; = "AppDR"

.field public static final APP_ROOT_PATH:Ljava/lang/String;

.field public static CAR_TYPE:Ljava/lang/String; = null

.field public static final CAR_TYPE_MC2:Ljava/lang/String; = "MC2"

.field public static final CAR_TYPE_NL_3RC:Ljava/lang/String; = "NL-3RC"

.field public static final CAR_TYPE_SK83_R:Ljava/lang/String; = "SK83_r"

.field public static final CAR_TYPE_SV91_D4:Ljava/lang/String; = "SV91-D4"

.field public static final CAR_TYPE_SX11RA_10:Ljava/lang/String; = "SX11RA_10"

.field public static final CAR_TYPE_SX11RA_8:Ljava/lang/String; = "SX11RA_8"

.field public static final CAR_TYPE_SX11_R2_D:Ljava/lang/String; = "SX11_R2_D"

.field public static final CAR_TYPE_SX11_R2_G:Ljava/lang/String; = "SX11_R2_G"

.field public static final CAR_TYPE_T19FL_R:Ljava/lang/String; = "T19FL_r"

.field public static CHANNEL_ONE_ID:Ljava/lang/String; = null

.field public static CHANNEL_ONE_NAME:Ljava/lang/String; = null

.field public static final CRASH_FILE_NAME:Ljava/lang/String; = "AppDR_Crash.txt"

.field public static final CRASH_FILE_PATH:Ljava/lang/String;

.field public static final CRASH_FILE_SUFFIX:Ljava/lang/String; = "_Crash.txt"

.field public static final CRASH_FOLDER_NAME:Ljava/lang/String; = "Crash"

.field public static final CRASH_FOLDER_PATH:Ljava/lang/String;

.field public static final DB_FILE_NAME:Ljava/lang/String; = "AppDR.db"

.field public static final DB_FILE_PATH:Ljava/lang/String;

.field public static final DB_FILE_SUFFIX:Ljava/lang/String; = ".db"

.field public static final DB_FOLDER_NAME:Ljava/lang/String; = "DataBase"

.field public static final DB_FOLDER_PATH:Ljava/lang/String;

.field public static FACTORY_NAME:Ljava/lang/String; = null

.field public static final GET_LINKAPP_OR_LIST:Ljava/lang/String; = "/ssplink/list_get"

.field public static final GET_VERSION:Ljava/lang/String; = "/ssplink/findapp_get"

.field public static final KEY_APPID:Ljava/lang/String; = "appId"

.field public static final KEY_CAR_TYPE:Ljava/lang/String; = "key_save_car_type"

.field public static final KEY_FACTORY_NAME:Ljava/lang/String; = "key_save_factory_name"

.field public static final KEY_LINKPACKAGE_NAME:Ljava/lang/String; = "key_save_linkpackage_name"

.field public static final KEY_SAVECHANGESERVER:Ljava/lang/String; = "key_save_change_server"

.field public static final KEY_SAVELOGSWITCH:Ljava/lang/String; = "key_save_log_switch"

.field public static final KEY_VEHICLEFACTORYNAME:Ljava/lang/String; = "vehicleFactoryName"

.field public static final KEY_VEHICLETYPE:Ljava/lang/String; = "vehicleType"

.field public static final LINKCAR:Ljava/lang/String; = "linkCar"

.field public static final LINKCHECK:Ljava/lang/String; = "LinkCheck"

.field public static final LINKSIZE:Ljava/lang/String; = "LinkSize"

.field public static final LOG4J_FILE_NAME:Ljava/lang/String; = "AppDR_log4j.log"

.field public static final LOG4J_FILE_PATH:Ljava/lang/String;

.field public static final LOG4J_FILE_SUFFIX:Ljava/lang/String; = "_log4j.log"

.field public static final LOG_FOLDER_NAME:Ljava/lang/String; = "Log"

.field public static final LOG_FOLDER_PATH:Ljava/lang/String;

.field public static final OFFICIAL_SERVER_URL:Ljava/lang/String; = "http://www.qdrive.cc:8100"

.field public static final PACKAGENAME:Ljava/lang/String; = "PackageName"

.field public static final PRESENTATION_OFF_STEP_TIME:I = 0x2bc

.field public static final TEST_SERVER_URL:Ljava/lang/String; = "http://10.10.94.46:8081"

.field public static final VERSION:Ljava/lang/String; = "Version"

.field public static appId:Ljava/lang/String; = null

.field public static arrayPermissions:[Ljava/lang/String; = null

.field public static changeServer:I = 0x0

.field public static isLink:Z = false

.field public static notificationId:I = 0x0

.field public static final vehicleFactoryName:Ljava/lang/String; = "SSP"

.field public static final vehicleType:Ljava/lang/String; = "QDrive"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AppDR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DataBase"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->DB_FOLDER_PATH:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->DB_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AppDR.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->DB_FILE_PATH:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->LOG_FOLDER_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->LOG_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AppDR_log4j.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->LOG4J_FILE_PATH:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->CRASH_FOLDER_PATH:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->CRASH_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AppDR_Crash.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->CRASH_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    const-string v1, ""

    .line 148
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->appId:Ljava/lang/String;

    .line 161
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    .line 163
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    .line 203
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->arrayPermissions:[Ljava/lang/String;

    const/16 v1, 0x7568

    .line 212
    sput v1, Lcom/neusoft/qdrivelink/Constants;->notificationId:I

    const-string v1, "com.neusoft.qdrivelink.notifation.channelid.qdlink"

    .line 217
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_ID:Ljava/lang/String;

    const-string v1, "Neusoft QDriveLink Channel Name QDLink"

    .line 222
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_NAME:Ljava/lang/String;

    .line 224
    sput-boolean v0, Lcom/neusoft/qdrivelink/Constants;->isLink:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
