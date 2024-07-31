.class public Lcom/huawei/hms/common/internal/ConnectionManagerKey;
.super Ljava/lang/Object;
.source "ConnectionManagerKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOption::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/huawei/hms/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOption;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->c:Z

    .line 24
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->a:Lcom/huawei/hms/api/Api;

    .line 25
    iput-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 26
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Lcom/huawei/hms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->d:I

    .line 27
    iput-object p3, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/api/Api;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->c:Z

    .line 32
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->a:Lcom/huawei/hms/api/Api;

    .line 33
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 34
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->d:I

    .line 35
    iput-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->e:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static createConnectionManagerKey(Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOption::",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/common/internal/ConnectionManagerKey;-><init>(Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createConnectionManagerKey(Lcom/huawei/hms/api/Api;Ljava/lang/String;)Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOption::",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/common/internal/ConnectionManagerKey;-><init>(Lcom/huawei/hms/api/Api;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 81
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 82
    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 84
    return v2

    .line 86
    :cond_1
    check-cast p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    .line 87
    iget-boolean v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->c:Z

    iget-boolean v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->a:Lcom/huawei/hms/api/Api;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->a:Lcom/huawei/hms/api/Api;

    .line 88
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 89
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->e:Ljava/lang/String;

    .line 90
    invoke-static {v1, p1}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 87
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->d:I

    return v0
.end method
