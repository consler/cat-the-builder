.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ColorPickerPreviewActivity.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickerPreviewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickerPreviewActivity.kt\norg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u000fH\u0014J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;",
        "()V",
        "backAction",
        "Landroid/widget/ImageView;",
        "colorPreview",
        "Landroid/view/View;",
        "currentColor",
        "",
        "doneAction",
        "oldChosenColor",
        "previewSurface",
        "Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;",
        "colorChanged",
        "",
        "color",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "saveAndFinish",
        "setCurrentColor",
        "showSaveChangesDialog",
        "Companion",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$Companion;

.field private static pickableImage:Landroid/graphics/Bitmap;


# instance fields
.field private backAction:Landroid/widget/ImageView;

.field private colorPreview:Landroid/view/View;

.field private currentColor:I

.field private doneAction:Landroid/widget/ImageView;

.field private oldChosenColor:I

.field private previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPickableImage$cp()Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->pickableImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final synthetic access$onBackPressed$s1748172038(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    .line 38
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public static final synthetic access$saveAndFinish(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    .line 38
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->saveAndFinish()V

    return-void
.end method

.method public static final synthetic access$setPickableImage$cp(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 38
    sput-object p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->pickableImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final saveAndFinish()V
    .locals 5

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$a$-apply-ColorPickerPreviewActivity$saveAndFinish$data$1":I
    iget v3, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->currentColor:I

    const-string v4, "colorExtra"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    nop

    .line 93
    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ColorPickerPreviewActivity$saveAndFinish$data$1":I
    nop

    .line 96
    .local v0, "data":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->finish()V

    .line 98
    return-void
.end method

.method private final setCurrentColor(I)V
    .locals 5
    .param p1, "color"    # I

    .line 101
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->currentColor:I

    .line 102
    nop

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    nop

    .line 104
    .local v0, "checkeredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 105
    .local v1, "shader":Landroid/graphics/BitmapShader;
    nop

    .line 106
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->colorPreview:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v3, "colorPreview"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    move-object v4, v1

    check-cast v4, Landroid/graphics/Shader;

    invoke-virtual {v3, v4, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method private final showSaveChangesDialog()V
    .locals 3

    .line 127
    nop

    .line 139
    nop

    .line 127
    nop

    .line 138
    nop

    .line 127
    nop

    .line 134
    nop

    .line 127
    nop

    .line 130
    nop

    .line 127
    nop

    .line 129
    nop

    .line 127
    nop

    .line 128
    nop

    .line 127
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 128
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_save_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 129
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_save_dialog_msg:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 130
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_no:I

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$showSaveChangesDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$showSaveChangesDialog$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 134
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_yes:I

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$showSaveChangesDialog$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$showSaveChangesDialog$2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .line 143
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setCurrentColor(I)V

    .line 144
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 119
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->oldChosenColor:I

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->currentColor:I

    if-eq v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->showSaveChangesDialog()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 123
    :goto_0
    nop

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$layout;->activity_color_picker_preview:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$id;->backAction:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.backAction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->backAction:Landroid/widget/ImageView;

    .line 61
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$id;->previewSurface:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.previewSurface)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 62
    const-string v1, "previewSurface"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setListener(Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;)V

    .line 64
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$id;->colorPreview:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.colorPreview)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->colorPreview:Landroid/view/View;

    .line 65
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$id;->doneAction:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.doneAction)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->doneAction:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "colorExtra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "it":I
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-let-ColorPickerPreviewActivity$onCreate$1":I
    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->oldChosenColor:I

    .line 69
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setCurrentColor(I)V

    .line 70
    nop

    .line 67
    .end local v0    # "it":I
    .end local v2    # "$i$a$-let-ColorPickerPreviewActivity$onCreate$1":I
    :cond_3
    nop

    .line 72
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->pickableImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 147
    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$a$-let-ColorPickerPreviewActivity$onCreate$2":I
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-let-ColorPickerPreviewActivity$onCreate$2":I
    goto/16 :goto_3

    :cond_5
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    .local v0, "$this$run":Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-run-ColorPickerPreviewActivity$onCreate$3":I
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    const-string v6, "bitmapHeightNameExtra"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_6
    move-object v3, v5

    .line 75
    .local v3, "height":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v6, "bitmapWidthNameExtra"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_7
    move-object v4, v5

    .line 76
    .local v4, "width":Ljava/lang/Integer;
    :goto_1
    if-eqz v4, :cond_9

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "it":I
    const/4 v7, 0x0

    .line 77
    .local v7, "$i$a$-let-ColorPickerPreviewActivity$onCreate$3$bitmap$1":I
    if-eqz v3, :cond_8

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "it1":I
    const/4 v8, 0x0

    .line 78
    .local v8, "$i$a$-let-ColorPickerPreviewActivity$onCreate$3$bitmap$1$1":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 77
    .end local v5    # "it1":I
    .end local v8    # "$i$a$-let-ColorPickerPreviewActivity$onCreate$3$bitmap$1$1":I
    nop

    .line 76
    .end local v6    # "it":I
    .end local v7    # "$i$a$-let-ColorPickerPreviewActivity$onCreate$3$bitmap$1":I
    :cond_8
    if-eqz v5, :cond_9

    goto :goto_2

    .line 80
    :cond_9
    move-object v5, v0

    .local v5, "$this$run":Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-run-ColorPickerPreviewActivity$onCreate$3$bitmap$2":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v8, 0x200

    invoke-static {v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 80
    .end local v5    # "$this$run":Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;
    .end local v6    # "$i$a$-run-ColorPickerPreviewActivity$onCreate$3$bitmap$2":I
    nop

    .line 76
    :goto_2
    nop

    .line 83
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez v6, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const-string v1, "bitmap"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    .end local v3    # "height":Ljava/lang/Integer;
    .end local v4    # "width":Ljava/lang/Integer;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 72
    .end local v0    # "$this$run":Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;
    .end local v2    # "$i$a$-run-ColorPickerPreviewActivity$onCreate$3":I
    nop

    .line 86
    :goto_3
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->doneAction:Landroid/widget/ImageView;

    if-nez v0, :cond_b

    const-string v1, "doneAction"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$onCreate$4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$onCreate$4;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->backAction:Landroid/widget/ImageView;

    if-nez v0, :cond_c

    const-string v1, "backAction"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$onCreate$5;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$onCreate$5;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 112
    nop

    .line 113
    nop

    .line 111
    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 116
    return-void
.end method
