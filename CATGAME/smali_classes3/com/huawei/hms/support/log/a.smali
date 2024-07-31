.class public Lcom/huawei/hms/support/log/a;
.super Ljava/lang/Object;
.source "LogAdaptor.java"


# static fields
.field private static final a:Lcom/huawei/hms/support/log/b;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/huawei/hms/support/log/a/a;

    invoke-direct {v0}, Lcom/huawei/hms/support/log/a/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/hms/support/log/a;->b:I

    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/c;
    .locals 3

    .line 116
    new-instance v0, Lcom/huawei/hms/support/log/c;

    iget-object v1, p0, Lcom/huawei/hms/support/log/a;->c:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/huawei/hms/support/log/c;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 118
    invoke-virtual {v0, p3}, Lcom/huawei/hms/support/log/c;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/c;

    .line 119
    invoke-virtual {v0, p4}, Lcom/huawei/hms/support/log/c;->a(Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/c;

    .line 121
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/log/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/hms/support/log/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/c;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/b;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/huawei/hms/support/log/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 69
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/log/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/support/log/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/c;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/huawei/hms/support/log/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 35
    iput p2, p0, Lcom/huawei/hms/support/log/a;->b:I

    .line 36
    iput-object p3, p0, Lcom/huawei/hms/support/log/a;->c:Ljava/lang/String;

    .line 38
    sget-object p2, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/b;

    const-string p3, "HMSCore"

    invoke-interface {p2, p1, p3}, Lcom/huawei/hms/support/log/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 100
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/huawei/hms/support/log/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/huawei/hms/support/log/c;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/hms/support/log/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/hms/support/log/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    sget-object v2, Lcom/huawei/hms/support/log/a;->a:Lcom/huawei/hms/support/log/b;

    invoke-interface {v2, v1, v0, p1, p2}, Lcom/huawei/hms/support/log/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 57
    iget v0, p0, Lcom/huawei/hms/support/log/a;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
