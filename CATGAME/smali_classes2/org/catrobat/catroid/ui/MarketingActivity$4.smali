.class Lorg/catrobat/catroid/ui/MarketingActivity$4;
.super Ljava/lang/Object;
.source "MarketingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/MarketingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/MarketingActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/MarketingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/MarketingActivity;

    .line 133
    iput-object p1, p0, Lorg/catrobat/catroid/ui/MarketingActivity$4;->this$0:Lorg/catrobat/catroid/ui/MarketingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 136
    const-string v0, "market://search?q=Catrobat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, "myAppLinkToMarket":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/MarketingActivity$4;->this$0:Lorg/catrobat/catroid/ui/MarketingActivity;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/MarketingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/MarketingActivity$4;->this$0:Lorg/catrobat/catroid/ui/MarketingActivity;

    const v4, 0x7f120542

    invoke-static {v3, v4}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 143
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
