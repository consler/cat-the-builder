.class public abstract Lcom/huawei/hms/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final LOCAL_REPORT_FILE:Ljava/lang/String; = "hms/HwMobileServiceReport.txt"

.field public static final LOCAL_REPORT_FILE_CONFIG:Ljava/lang/String; = "hms/config.txt"

.field public static final LOCAL_REPORT_FILE_MAX_SIZE:J = 0x2800L

.field private static a:Z

.field private static b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/hms/utils/FileUtil;->a:Z

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/utils/FileUtil;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyHash(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 136
    invoke-static {p1}, Lcom/huawei/hms/utils/SHA256;->digest(Ljava/io/File;)[B

    move-result-object p1

    .line 138
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/HEX;->encodeHexString([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2

    .line 53
    sget-object v0, Lcom/huawei/hms/utils/FileUtil;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/huawei/hms/utils/FileUtil$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/huawei/hms/utils/FileUtil$1;-><init>(Ljava/io/File;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public static writeFileReport(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;JI)V
    .locals 0

    .line 113
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 114
    sget-boolean p0, Lcom/huawei/hms/utils/FileUtil;->a:Z

    if-nez p0, :cond_1

    .line 115
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 117
    const-string p0, "FileUtil"

    const-string p1, "file delete failed."

    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/huawei/hms/utils/FileUtil;->a:Z

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 p3, 0x2800

    invoke-static {p2, p0, p3, p4}, Lcom/huawei/hms/utils/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;J)V

    .line 126
    :cond_2
    return-void
.end method
