.class public Lcom/huawei/hms/support/log/HMSLog;
.super Ljava/lang/Object;
.source "HMSLog.java"


# static fields
.field private static final a:Lcom/huawei/hms/support/log/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/huawei/hms/support/log/a;

    invoke-direct {v0}, Lcom/huawei/hms/support/log/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    const-string v1, "HMS-[unknown-version]"

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HMS-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 53
    :catch_0
    move-exception p0

    .line 55
    return-object v1

    .line 58
    :cond_0
    return-object v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static e(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 145
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {v0, p2, p0, p1}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 157
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {v0, p2, p0, p1, p4}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hms/support/log/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v0, "============================================================================"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "====== "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/hms/support/log/HMSLog;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-object p0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/support/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static isErrorEnable()Z
    .locals 2

    .line 85
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public static isInfoEnable()Z
    .locals 2

    .line 67
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public static isWarnEnable()Z
    .locals 2

    .line 76
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/huawei/hms/support/log/HMSLog;->a:Lcom/huawei/hms/support/log/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/support/log/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
