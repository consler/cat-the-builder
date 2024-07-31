.class public Lcom/huawei/hms/activity/internal/b;
.super Ljava/lang/Object;
.source "ForegroundInnerHeader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/huawei/hms/activity/internal/b;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/huawei/hms/activity/internal/b;->a:I

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/huawei/hms/activity/internal/b;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/activity/internal/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/huawei/hms/activity/internal/b;->c:Ljava/lang/String;

    return-object v0
.end method
