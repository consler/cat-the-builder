.class Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/WebViewActivity;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/ui/WebViewActivity;Lorg/catrobat/catroid/ui/WebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/ui/WebViewActivity;
    .param p2, "x1"    # Lorg/catrobat/catroid/ui/WebViewActivity$1;

    .line 160
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;-><init>(Lorg/catrobat/catroid/ui/WebViewActivity;)V

    return-void
.end method

.method private checkIfWebViewVisitExternalWebsite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 229
    const-string v0, "https://share.catrob.at"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://catrob.at/help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string v0, "https://share.catrob.at/pocketcode/download-media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$202(Lorg/catrobat/catroid/ui/WebViewActivity;Z)Z

    .line 179
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$102(Lorg/catrobat/catroid/ui/WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 183
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlClient"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$200(Lorg/catrobat/catroid/ui/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1302ba

    invoke-direct {v2, v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$102(Lorg/catrobat/catroid/ui/WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 165
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 166
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x103001e

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$100(Lorg/catrobat/catroid/ui/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$200(Lorg/catrobat/catroid/ui/WebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://share.catrob.at/pocketcode/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "https://share.catrob.at/app/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$202(Lorg/catrobat/catroid/ui/WebViewActivity;Z)Z

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->onBackPressed()V

    .line 174
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12030f

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 212
    :cond_0
    const/4 v0, -0x6

    if-eq p2, v0, :cond_2

    const/16 v0, -0xe

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    const/4 v0, -0x8

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t connect to the server! info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->setContentView(I)V

    .line 219
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802b9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    .line 221
    iget-object v0, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12004c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 225
    :goto_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    const-string v1, "android.intent.action.VIEW"

    if-eqz p2, :cond_1

    const-string v2, "whatsapp://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$300(Lorg/catrobat/catroid/ui/WebViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 190
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v3, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202f2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 196
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/WebViewActivity;->access$400(Lorg/catrobat/catroid/ui/WebViewActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->checkIfWebViewVisitExternalWebsite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 199
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 200
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/WebViewActivity$MyWebViewClient;->this$0:Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/ui/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    return v0

    .line 203
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
