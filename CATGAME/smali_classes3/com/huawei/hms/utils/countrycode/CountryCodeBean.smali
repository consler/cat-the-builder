.class public Lcom/huawei/hms/utils/countrycode/CountryCodeBean;
.super Ljava/lang/Object;
.source "CountryCodeBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->c:Z

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a(Landroid/content/Context;Z)V

    .line 70
    iget-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 2

    .line 97
    const-string v0, "CountryCodeBean"

    if-eqz p1, :cond_3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->d()V

    .line 103
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string p1, "getCountryCode get country code from VENDOR_COUNTRY"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 110
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b(Landroid/content/Context;Z)V

    .line 111
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    const-string p1, "getCountryCode get country code from SIM_COUNTRY"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->e()V

    .line 118
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    const-string p1, "getCountryCode get country code from LOCALE_INFO"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_2
    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    const-string p1, "get CountryCode error"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context must be not null.Please provide app\'s Context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 2

    .line 182
    nop

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const-string v0, "CountryCodeBean"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 188
    const-string p2, "getCountryCode get country code from NETWORK_COUNTRY"

    invoke-static {v0, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 192
    const-string p1, "NETWORK_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_0
    const-string p2, "getCountryCode get country code from SIM_COUNTRY"

    invoke-static {v0, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 196
    const-string p1, "SIM_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->c()V

    .line 200
    return-void
.end method

.method private b()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 140
    :cond_0
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 143
    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    .line 153
    const-string v0, "VENDOR_COUNTRY"

    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 154
    const-string v0, "get"

    const-string v1, "ro.hw.country"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 157
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->c:Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    const-string v1, "eu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 163
    const-string v1, "la"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->c()V

    goto :goto_1

    .line 164
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 165
    iput-object v3, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 169
    :goto_1
    return-void
.end method

.method private e()V
    .locals 4

    .line 210
    const-string v0, "get"

    const-string v1, "ro.product.locale.region"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 212
    const-string v1, "LOCALE_INFO"

    iput-object v1, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 214
    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->c:Z

    if-nez v0, :cond_0

    .line 215
    const-string v0, "CountryCodeBean"

    const-string v1, "countryCode from system language is not reliable."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-object v3, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    .line 217
    iput-object v3, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->a:Ljava/lang/String;

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/huawei/hms/utils/countrycode/CountryCodeBean;->b:Ljava/lang/String;

    return-object v0
.end method
