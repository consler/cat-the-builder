.class public Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;
.super Ljava/lang/Object;


# static fields
.field private static final ANDRIOD_SYSTEMPROP:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final COUNTRYCODE_SIZE:I = 0x2

.field private static final LOCALE_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale.region"

.field private static final SPECIAL_COUNTRYCODE_CN:Ljava/lang/String; = "cn"

.field private static final SPECIAL_COUNTRYCODE_EU:Ljava/lang/String; = "eu"

.field private static final SPECIAL_COUNTRYCODE_LA:Ljava/lang/String; = "la"

.field private static final TAG:Ljava/lang/String;

.field private static final VENDORCOUNTRY_SYSTEMPROP:Ljava/lang/String; = "ro.hw.country"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private countrySource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->init(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method private checkCodeLenth()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getLocaleCountryCode()V
    .locals 4

    const-string v0, "get"

    const-string v1, "ro.product.locale.region"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "LOCALE_INFO"

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string v1, "countryCode from system language is not reliable."

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "getCountryCode get country code from {%s}"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    sget-object p2, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "NETWORK_COUNTRY"

    aput-object v3, v1, v0

    invoke-static {p2, v2, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "SIM_COUNTRY"

    aput-object v3, v1, v0

    invoke-static {p2, v2, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    return-void
.end method

.method private getVendorCountryCode()V
    .locals 4

    const-string v0, "VENDOR_COUNTRY"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    const-string v0, "get"

    const-string v1, "ro.hw.country"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "eu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "la"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getVendorCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "getCountryCode get country code from {%s}"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "VENDOR_COUNTRY"

    aput-object v0, p2, v1

    invoke-static {p1, v3, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "SIM_COUNTRY"

    aput-object v0, p2, v1

    invoke-static {p1, v3, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getLocaleCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "LOCALE_INFO"

    aput-object v0, p2, v1

    invoke-static {p1, v3, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get CountryCode error"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context must be not null.Please provide app\'s Context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isCodeValidate()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-object v0
.end method
