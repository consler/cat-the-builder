.class Lcom/huawei/hms/api/BindingFailedResolution$1;
.super Ljava/lang/Object;
.source "BindingFailedResolution.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/api/BindingFailedResolution;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/api/BindingFailedResolution;


# direct methods
.method constructor <init>(Lcom/huawei/hms/api/BindingFailedResolution;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$1;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 79
    if-eqz p1, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$1;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Lcom/huawei/hms/api/BindingFailedResolution;I)V

    .line 85
    const/4 p1, 0x1

    return p1

    .line 80
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
