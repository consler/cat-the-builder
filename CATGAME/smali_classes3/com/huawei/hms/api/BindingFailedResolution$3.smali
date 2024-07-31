.class Lcom/huawei/hms/api/BindingFailedResolution$3;
.super Ljava/lang/Object;
.source "BindingFailedResolution.java"

# interfaces
.implements Lcom/huawei/hms/ui/AbstractDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/api/BindingFailedResolution;->e()V
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

    .line 339
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$3;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/huawei/hms/ui/AbstractDialog;)V
    .locals 1

    .line 349
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$3;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Lcom/huawei/hms/api/BindingFailedResolution;Lcom/huawei/hms/api/BindingFailedResolution$a;)Lcom/huawei/hms/api/BindingFailedResolution$a;

    .line 350
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$3;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Lcom/huawei/hms/api/BindingFailedResolution;I)V

    .line 351
    return-void
.end method

.method public onDoWork(Lcom/huawei/hms/ui/AbstractDialog;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$3;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Lcom/huawei/hms/api/BindingFailedResolution;Lcom/huawei/hms/api/BindingFailedResolution$a;)Lcom/huawei/hms/api/BindingFailedResolution$a;

    .line 344
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution$3;->a:Lcom/huawei/hms/api/BindingFailedResolution;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Lcom/huawei/hms/api/BindingFailedResolution;I)V

    .line 345
    return-void
.end method
