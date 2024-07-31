.class public final Lcom/huawei/hianalytics/ab/bc/ab/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;
    }
.end annotation


# static fields
.field public static final ab:Ljava/nio/charset/Charset;

.field private static bc:Lcom/huawei/hianalytics/ab/bc/ab/bc;


# instance fields
.field private cd:Lcom/huawei/hianalytics/ab/bc/ab/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc;

    return-object v0
.end method

.method private static declared-synchronized bc()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/bc/ab/bc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/ab/bc;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/ab/bc;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$1;->ab:[I

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "CryptFactory"

    const-string v0, "crypt type is other"

    invoke-static {p1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/huawei/hianalytics/ab/bc/ab/gh;

    invoke-direct {p1}, Lcom/huawei/hianalytics/ab/bc/ab/gh;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/huawei/hianalytics/ab/bc/ab/ef;

    invoke-direct {p1}, Lcom/huawei/hianalytics/ab/bc/ab/ef;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/huawei/hianalytics/ab/bc/ab/ab;

    invoke-direct {p1}, Lcom/huawei/hianalytics/ab/bc/ab/ab;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/ab/bc;->cd:Lcom/huawei/hianalytics/ab/bc/ab/fg;

    :goto_1
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/bc/ab/bc;->cd:Lcom/huawei/hianalytics/ab/bc/ab/fg;

    return-object p1
.end method

.method public ab(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/bc/ab/cd;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ab([C[B)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/bc/ab/cd;->ab([C[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab()I

    move-result p1

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/bc/ab/de;->ab(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bc(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/bc/ab/de;->ab(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
