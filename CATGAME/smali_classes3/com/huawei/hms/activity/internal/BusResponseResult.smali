.class public Lcom/huawei/hms/activity/internal/BusResponseResult;
.super Ljava/lang/Object;
.source "BusResponseResult.java"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/huawei/hms/activity/internal/BusResponseResult;->b:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/activity/internal/BusResponseResult;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/huawei/hms/activity/internal/BusResponseResult;->b:I

    .line 33
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/huawei/hms/activity/internal/BusResponseResult;->a:Landroid/content/Intent;

    .line 25
    return-void
.end method
