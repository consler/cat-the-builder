.class public Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;
.super Lorg/catrobat/catroid/ui/BaseCastActivity;
.source "VisualPlacementActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/catrobat/catroid/visualplacement/CoordinateInterface;


# static fields
.field public static final CHANGED_COORDINATES:Ljava/lang/String; = "changedCoordinates"

.field public static final TAG:Ljava/lang/String;

.field public static final X_COORDINATE_BUNDLE_ARGUMENT:Ljava/lang/String; = "xCoordinate"

.field public static final Y_COORDINATE_BUNDLE_ARGUMENT:Ljava/lang/String; = "yCoordinate"


# instance fields
.field private bitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private imageView:Landroid/widget/ImageView;

.field private isText:Z

.field private layoutHeight:I

.field private layoutHeightRatio:F

.field private layoutWidth:I

.field private layoutWidthRatio:F

.field private projectManager:Lorg/catrobat/catroid/ProjectManager;

.field private relativeTextSize:F

.field private reversedRatioHeight:F

.field private reversedRatioWidth:F

.field private rotation:F

.field private rotationMode:I

.field private scaleX:F

.field private scaleY:F

.field private text:Ljava/lang/String;

.field private textAlignment:I

.field private textColor:Ljava/lang/String;

.field private translateX:F

.field private translateY:F

.field private visualPlacementTouchListener:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

.field private xCoord:F

.field private xOffsetText:F

.field private yCoord:F

.field private yOffsetText:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;-><init>()V

    return-void
.end method

.method private convertTextToBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 343
    .local v0, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->relativeTextSize:F

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Lorg/catrobat/catroid/utils/ShowTextUtils;->sanitizeTextSize(F)F

    move-result v2

    .line 344
    .local v2, "textSizeInPx":F
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    iget-object v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textColor:Ljava/lang/String;

    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->isValidColorString(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    .line 347
    iget-object v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textColor:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textColor:Ljava/lang/String;

    .line 349
    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->calculateColorRGBs(Ljava/lang/String;)[I

    move-result-object v3

    .line 350
    .local v3, "rgb":[I
    const/4 v6, 0x0

    aget v6, v3, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    aget v4, v3, v5

    or-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    .end local v3    # "rgb":[I
    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    .line 357
    .local v1, "baseline":F
    iget-object v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 358
    .local v3, "bitmapWidth":I
    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textAlignment:I

    invoke-static {v0, v3, v4}, Lorg/catrobat/catroid/utils/ShowTextUtils;->calculateAlignmentValuesForText(Landroid/graphics/Paint;II)I

    move-result v4

    .line 359
    .local v4, "canvasWidth":I
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    .line 361
    .local v6, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 364
    .local v7, "visualPlacementBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v8, "canvas":Landroid/graphics/Canvas;
    iget-object v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->text:Ljava/lang/String;

    int-to-float v10, v4

    invoke-virtual {v8, v9, v10, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yOffsetText:F

    .line 370
    iget v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textAlignment:I

    if-eqz v9, :cond_2

    if-eq v9, v5, :cond_1

    goto :goto_1

    .line 375
    :cond_1
    iget v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    int-to-float v5, v10

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    goto :goto_1

    .line 372
    :cond_2
    iget v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    int-to-float v5, v10

    add-float/2addr v9, v5

    iput v9, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    .line 373
    nop

    .line 378
    :goto_1
    return-object v7
.end method

.method private finishWithResult()V
    .locals 7

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v0, "returnIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BRICK_HASH"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xCoord:F

    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioWidth:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 423
    .local v2, "xCoordinate":I
    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yCoord:F

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioHeight:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 425
    .local v3, "yCoordinate":I
    const-string v5, "xCoordinate"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v5, "yCoordinate"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const-string v6, "changedCoordinates"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v4, v0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setResult(ILandroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->finish()V

    .line 432
    return-void
.end method

.method private setBackground()V
    .locals 5

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/ProjectManagerExtensionsKt;->getProjectBitmap(Lorg/catrobat/catroid/ProjectManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "backgroundBitmap":Landroid/graphics/Bitmap;
    nop

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidthRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeightRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 250
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 253
    .local v1, "scaledBackgroundBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 254
    .local v2, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "#6F000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 256
    iget-object v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "scaledBackgroundBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showSaveChangesDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    const v1, 0x7f120369

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 437
    const v1, 0x7f120368

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 438
    const v1, 0x7f120712

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 439
    const v1, 0x7f12028e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 395
    iget v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xCoord:F

    iget v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioWidth:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 396
    .local v0, "xCoordinate":I
    iget v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yCoord:F

    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 398
    .local v1, "yCoordinate":I
    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->finish()V

    goto :goto_1

    .line 399
    :cond_1
    :goto_0
    invoke-direct {p0, p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->showSaveChangesDialog(Landroid/content/Context;)V

    .line 403
    :goto_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 407
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->finishWithResult()V

    .line 410
    goto :goto_0

    .line 412
    :cond_1
    const v0, 0x7f12034c

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 413
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->finish()V

    .line 416
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-super {v0, v1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    .line 159
    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    .line 161
    .local v1, "currentProject":Lorg/catrobat/catroid/content/Project;
    const v2, 0x7f0d01f4

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setContentView(I)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 163
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "X"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    .line 164
    const-string v3, "Y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    .line 165
    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 166
    iput-boolean v5, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isText:Z

    .line 167
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->text:Ljava/lang/String;

    .line 168
    iput v5, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textAlignment:I

    .line 169
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->relativeTextSize:F

    .line 170
    const-string v3, "TEXT_COLOR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textColor:Ljava/lang/String;

    .line 172
    const-string v3, "TEXT_ALIGNMENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->textAlignment:I

    .line 173
    const-string v3, "TEXT_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->relativeTextSize:F

    .line 175
    :cond_1
    const/high16 v3, -0x3fc00000    # -3.0f

    iput v3, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    .line 178
    :cond_2
    const v3, 0x7f0a0620

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 179
    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    const v6, 0x7f1200f0

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 183
    iget-object v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v0, v5}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setRequestedOrientation(I)V

    .line 188
    :goto_0
    new-instance v4, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

    invoke-direct {v4}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;-><init>()V

    iput-object v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->visualPlacementTouchListener:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

    .line 190
    const v4, 0x7f0a03bc

    invoke-virtual {v0, v4}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 192
    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .line 193
    .local v4, "screenWidth":I
    sget v6, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 194
    .local v6, "screenHeight":I
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v7

    iget v7, v7, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 195
    .local v7, "virtualScreenWidth":I
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v8

    iget v8, v8, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 197
    .local v8, "virtualScreenHeight":I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 198
    .local v9, "aspectRatio":F
    invoke-static {}, Lorg/catrobat/catroid/common/ScreenValues;->getAspectRatio()F

    move-result v10

    .line 201
    .local v10, "screenAspectRatio":F
    int-to-float v11, v6

    int-to-float v12, v8

    div-float/2addr v11, v12

    .line 202
    .local v11, "ratioHeight":F
    int-to-float v12, v4

    int-to-float v13, v7

    div-float/2addr v12, v13

    .line 204
    .local v12, "ratioWidth":F
    sget-object v13, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity$1;->$SwitchMap$org$catrobat$catroid$common$ScreenModes:[I

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getScreenMode()Lorg/catrobat/catroid/common/ScreenModes;

    move-result-object v14

    invoke-virtual {v14}, Lorg/catrobat/catroid/common/ScreenModes;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v5, :cond_5

    const/4 v5, 0x2

    if-eq v13, v5, :cond_4

    goto :goto_1

    .line 220
    :cond_4
    iput v6, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    .line 221
    iput v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    goto :goto_1

    .line 206
    :cond_5
    cmpg-float v5, v9, v10

    if-gez v5, :cond_6

    .line 207
    div-float v5, v11, v12

    .line 208
    .local v5, "scale":F
    int-to-float v13, v4

    mul-float/2addr v13, v5

    float-to-int v13, v13

    iput v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    .line 209
    iput v6, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    goto :goto_1

    .line 210
    .end local v5    # "scale":F
    :cond_6
    cmpl-float v5, v9, v10

    if-lez v5, :cond_7

    .line 211
    div-float v5, v12, v11

    .line 212
    .restart local v5    # "scale":F
    int-to-float v13, v6

    mul-float/2addr v13, v5

    float-to-int v13, v13

    iput v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    .line 213
    iput v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    goto :goto_1

    .line 215
    .end local v5    # "scale":F
    :cond_7
    iput v6, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    .line 216
    iput v4, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    .line 218
    nop

    .line 225
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x11

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 228
    iget v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 229
    iget v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 230
    iget-object v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget v13, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeight:I

    int-to-float v14, v13

    int-to-float v15, v8

    div-float/2addr v14, v15

    iput v14, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeightRatio:F

    .line 233
    iget v14, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidth:I

    int-to-float v15, v14

    move-object/from16 v16, v1

    .end local v1    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .local v16, "currentProject":Lorg/catrobat/catroid/content/Project;
    int-to-float v1, v7

    div-float/2addr v15, v1

    iput v15, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidthRatio:F

    .line 234
    int-to-float v1, v8

    int-to-float v13, v13

    div-float/2addr v1, v13

    iput v1, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioHeight:F

    .line 235
    int-to-float v1, v7

    int-to-float v13, v14

    div-float/2addr v1, v13

    iput v1, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioWidth:F

    .line 237
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 238
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 240
    invoke-direct/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->setBackground()V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->showMovableImageView()V

    .line 243
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->bringToFront()V

    .line 244
    iget-object v1, v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 133
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->finishWithResult()V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->onBackPressed()V

    .line 142
    nop

    .line 147
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .line 388
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onStart()V

    .line 389
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 390
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 391
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 383
    iget-object v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->visualPlacementTouchListener:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;

    iget-object v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p2, p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->onTouch(Landroid/widget/ImageView;Landroid/view/MotionEvent;Lorg/catrobat/catroid/visualplacement/CoordinateInterface;)Z

    move-result v0

    return v0
.end method

.method public setXCoordinate(F)V
    .locals 1
    .param p1, "xCoordinate"    # F

    .line 446
    iget-boolean v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isText:Z

    if-eqz v0, :cond_0

    .line 447
    iget v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    sub-float v0, p1, v0

    iput v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xCoord:F

    goto :goto_0

    .line 449
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xCoord:F

    .line 451
    :goto_0
    return-void
.end method

.method public setYCoordinate(F)V
    .locals 1
    .param p1, "yCoordinate"    # F

    .line 455
    iget-boolean v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isText:Z

    if-eqz v0, :cond_0

    .line 456
    iget v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yOffsetText:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yCoord:F

    goto :goto_0

    .line 458
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yCoord:F

    .line 460
    :goto_0
    return-void
.end method

.method public showMovableImageView()V
    .locals 14

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 267
    .local v0, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    .line 269
    iget-boolean v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isText:Z

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->convertTextToBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "visualPlacementBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 272
    .end local v1    # "visualPlacementBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iget-object v1, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "objectLookPath":Ljava/lang/String;
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getScaleX()F

    move-result v2

    iput v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->scaleX:F

    .line 275
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getScaleY()F

    move-result v2

    iput v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->scaleY:F

    .line 276
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v2

    iput v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->rotationMode:I

    .line 277
    iget-object v2, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v2

    iput v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->rotation:F

    .line 278
    iget-object v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .local v2, "visualPlacementBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 279
    .end local v1    # "objectLookPath":Ljava/lang/String;
    .end local v2    # "visualPlacementBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "objectLookPath":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .restart local v2    # "visualPlacementBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 283
    .end local v1    # "objectLookPath":Ljava/lang/String;
    .end local v2    # "visualPlacementBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0802b9

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 286
    .local v3, "visualPlacementBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v1, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v3

    .line 292
    .end local v3    # "visualPlacementBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .local v1, "visualPlacementBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 293
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->rotationMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 296
    goto :goto_1

    .line 298
    :cond_4
    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->rotation:F

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v6, v3, v4

    if-eqz v6, :cond_6

    .line 299
    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 303
    :cond_5
    iget v3, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->rotation:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 304
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 309
    :cond_6
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 311
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    .line 309
    move-object v7, v1

    move-object v12, v2

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutWidthRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 314
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->layoutHeightRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 313
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 316
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 319
    iget-boolean v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->isText:Z

    if-eqz v4, :cond_7

    .line 320
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    iget v6, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xOffsetText:F

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 321
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    neg-float v5, v5

    iget v6, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yOffsetText:F

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_2

    .line 323
    :cond_7
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 324
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    neg-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 326
    :goto_2
    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateX:F

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioWidth:F

    div-float/2addr v4, v5

    iput v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->xCoord:F

    .line 327
    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->translateY:F

    iget v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->reversedRatioHeight:F

    div-float/2addr v4, v5

    iput v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->yCoord:F

    .line 329
    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->scaleX:F

    float-to-double v5, v4

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v5, v7

    if-lez v5, :cond_8

    .line 330
    iget-object v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 333
    :cond_8
    iget v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->scaleY:F

    float-to-double v5, v4

    cmpl-double v5, v5, v7

    if-lez v5, :cond_9

    .line 334
    iget-object v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 336
    :cond_9
    iget-object v4, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    return-void
.end method
