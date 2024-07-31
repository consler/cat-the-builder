.class Lorg/catrobat/catroid/ui/MarketingActivity$3;
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

.field final synthetic val$xmlheader:Lorg/catrobat/catroid/content/XmlHeader;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/MarketingActivity;Lorg/catrobat/catroid/content/XmlHeader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/MarketingActivity;

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/ui/MarketingActivity$3;->this$0:Lorg/catrobat/catroid/ui/MarketingActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/MarketingActivity$3;->val$xmlheader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/ui/MarketingActivity$3;->val$xmlheader:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->getRemixParentsUrlString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "urlsString":Ljava/lang/String;
    const-string v1, "Header of program contains not even one valid detail url!"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->extractRemixUrlsFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "extractedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-static {}, Lorg/catrobat/catroid/ui/MarketingActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://share.catrob.at"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/ui/MarketingActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Program detail url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lorg/catrobat/catroid/ui/MarketingActivity$3;->this$0:Lorg/catrobat/catroid/ui/MarketingActivity;

    invoke-static {v3, v1}, Lorg/catrobat/catroid/ui/MarketingActivity;->access$100(Lorg/catrobat/catroid/ui/MarketingActivity;Ljava/lang/String;)V

    .line 130
    return-void

    .line 114
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "extractedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ui/MarketingActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
