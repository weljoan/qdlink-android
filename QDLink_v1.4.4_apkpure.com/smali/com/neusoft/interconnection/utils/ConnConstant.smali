.class public Lcom/neusoft/interconnection/utils/ConnConstant;
.super Ljava/lang/Object;
.source "ConnConstant.java"


# static fields
.field public static final BIN_FORMAT:Ljava/lang/String; = "!BIN"

.field public static final CYCLES_FIND:I = 0x5

.field public static final DEFULT_FORMAT:Ljava/lang/String; = "DEFULT"

.field public static final JSON_FORMAT:Ljava/lang/String; = "JSON"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final LANDSCAPE:Ljava/lang/String; = "Landscape"

.field public static final NEW_FORMAT:Ljava/lang/String; = "5A5A"

.field public static final OFFEST_1:I = 0x1

.field public static final OFFEST_2:I = 0x2

.field public static final OFFSET_4:I = 0x4

.field public static final PAYLOAD_BIN:I = 0x0

.field public static final PAYLOAD_H264:I = 0x2

.field public static final PAYLOAD_JSON:I = 0x1

.field public static final PAYLOAD_PCM:I = 0x3

.field public static final PORTRAIT:Ljava/lang/String; = "Portrait"

.field public static final SCREENON:Ljava/lang/String; = "ScreenOn"

.field public static final TIME_DELAY:I = 0x3e8

.field public static final USB_READ:Ljava/lang/String; = "usb_read"

.field public static final USB_WRITE:Ljava/lang/String; = "usb_write"

.field public static final USB_WRITE_CUSTOM:Ljava/lang/String; = "usb_write_custom"

.field public static final WIFI_READ:Ljava/lang/String; = "wifi_read"

.field public static final WIFI_WRITE:Ljava/lang/String; = "wifi_write"

.field public static final WIFI_WRITE_CUSTOM:Ljava/lang/String; = "wifi_write_custom"

.field public static final XML_FORMAT:Ljava/lang/String; = "!XML"

.field public static final commonHeaderLength:I = 0x10

.field public static connFileInputStream:Ljava/io/FileInputStream; = null

.field public static connFileOutputStream:Ljava/io/FileOutputStream; = null

.field public static mainIsCreate:Z = false

.field public static final mirrorPause:Ljava/lang/String; = "pause"

.field public static final mirrorPlay:Ljava/lang/String; = "play"

.field public static final mirrorStop:Ljava/lang/String; = "stop"

.field public static wifiInputStream:Ljava/io/InputStream;

.field public static wifiOutputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packageCode(Landroid/content/Context;)I
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 148
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static packageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 130
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
