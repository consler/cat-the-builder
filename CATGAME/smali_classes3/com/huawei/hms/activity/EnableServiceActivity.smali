.class public Lcom/huawei/hms/activity/EnableServiceActivity;
.super Landroid/app/Activity;
.source "EnableServiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Lcom/huawei/hms/base/ui/R$layout;->activity_endisable_service:I

    invoke-virtual {p0, p1}, Lcom/huawei/hms/activity/EnableServiceActivity;->setContentView(I)V

    .line 23
    return-void
.end method
