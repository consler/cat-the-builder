.class public Lorg/catrobat/catroid/ui/MarketingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MarketingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/catrobat/catroid/ui/MarketingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/MarketingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/catrobat/catroid/ui/MarketingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/MarketingActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/MarketingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/MarketingActivity;->startWebViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method private scaleDrawable2Bitmap(Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "landscapeMode"    # Z

    .line 148
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MarketingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .line 152
    .local v1, "width":I
    :goto_0
    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 153
    .local v2, "factor":D
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    .line 154
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   scaleFactor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GSOC"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 156
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    return-object v5
.end method

.method private startWebViewActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MarketingActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    .line 65
    .local v0, "xmlheader":Lorg/catrobat/catroid/content/XmlHeader;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/MarketingActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MarketingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 67
    const v1, 0x7f0d002f

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/MarketingActivity;->setContentView(I)V

    .line 69
    const v1, 0x7f0a0612

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "appName":Landroid/widget/TextView;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/XmlHeader;->islandscapeMode()Z

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/MarketingActivity;->scaleDrawable2Bitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const v3, 0x7f0a04ab

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 75
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    const v4, 0x7f0a03cc

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 78
    .local v4, "googlePlayStore":Landroid/widget/LinearLayout;
    const v5, 0x7f0a03d7

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 80
    .local v5, "huaweiAppGallery":Landroid/widget/LinearLayout;
    new-instance v6, Lorg/catrobat/catroid/ui/MarketingActivity$1;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/MarketingActivity$1;-><init>(Lorg/catrobat/catroid/ui/MarketingActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v6, Lorg/catrobat/catroid/ui/MarketingActivity$2;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/MarketingActivity$2;-><init>(Lorg/catrobat/catroid/ui/MarketingActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v6, 0x7f0a063d

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 107
    .local v6, "website":Landroid/widget/TextView;
    const v7, 0x7f0a04a9

    invoke-virtual {p0, v7}, Lorg/catrobat/catroid/ui/MarketingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 109
    .local v7, "playstore":Landroid/widget/TextView;
    new-instance v8, Lorg/catrobat/catroid/ui/MarketingActivity$3;

    invoke-direct {v8, p0, v0}, Lorg/catrobat/catroid/ui/MarketingActivity$3;-><init>(Lorg/catrobat/catroid/ui/MarketingActivity;Lorg/catrobat/catroid/content/XmlHeader;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v8, Lorg/catrobat/catroid/ui/MarketingActivity$4;

    invoke-direct {v8, p0}, Lorg/catrobat/catroid/ui/MarketingActivity$4;-><init>(Lorg/catrobat/catroid/ui/MarketingActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method
