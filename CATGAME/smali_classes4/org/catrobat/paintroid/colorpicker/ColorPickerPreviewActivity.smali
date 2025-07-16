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
        "colorpicker_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
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
.method public static synthetic $r8$lambda$JBxnDpTNK42QFrmd5z9WcOGJdhU(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->onCreate$lambda-6(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3HzI4khIbVa9PyQ7Qd4yIAidVI(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->showSaveChangesDialog$lambda-10(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_dY1DaNpvc2vxwAdktAKK-QzQM(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->showSaveChangesDialog$lambda-9(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rbS5n_U0p89Gct8Y2eqJHMKVv24(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->onCreate$lambda-7(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V

    return-void
.end method

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

.method public static final synthetic access$setPickableImage$cp(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 38
    sput-object p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->pickableImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static final onCreate$lambda-6(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->saveAndFinish()V

    return-void
.end method

.method private static final onCreate$lambda-7(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->onBackPressed()V

    return-void
.end method

.method private final saveAndFinish()V
    .locals 3

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "colorExtra"

    .line 94
    iget v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->currentColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p0, v1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->finish()V

    return-void
.end method

.method private final setCurrentColor(I)V
    .locals 4

    .line 101
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->currentColor:I

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->colorPreview:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "colorPreview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    :cond_0
    sget-object v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v2, v1, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final showSaveChangesDialog()V
    .locals 3

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

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 134
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_yes:I

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static final showSaveChangesDialog$lambda-10(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->saveAndFinish()V

    return-void
.end method

.method private static final showSaveChangesDialog$lambda-9(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setCurrentColor(I)V

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

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lorg/catrobat/paintroid/colorpicker/R$layout;->activity_color_picker_preview:I

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 60
    :cond_0
    sget p1, Lorg/catrobat/paintroid/colorpicker/R$id;->backAction:I

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.backAction)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->backAction:Landroid/widget/ImageView;

    .line 61
    sget p1, Lorg/catrobat/paintroid/colorpicker/R$id;->previewSurface:I

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.previewSurface)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    const-string v0, "previewSurface"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setBackgroundColor(I)V

    .line 63
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;

    invoke-virtual {p1, v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setListener(Lorg/catrobat/paintroid/colorpicker/OnImageViewPointClickedListener;)V

    .line 64
    sget p1, Lorg/catrobat/paintroid/colorpicker/R$id;->colorPreview:I

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.colorPreview)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->colorPreview:Landroid/view/View;

    .line 65
    sget p1, Lorg/catrobat/paintroid/colorpicker/R$id;->doneAction:I

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.doneAction)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->doneAction:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "colorExtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 68
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->oldChosenColor:I

    .line 69
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->setCurrentColor(I)V

    .line 72
    :goto_0
    sget-object p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->pickableImage:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez v2, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_6
    invoke-virtual {v2, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p1, :cond_d

    move-object p1, p0

    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, v1

    goto :goto_2

    :cond_7
    const-string v2, "bitmapHeightNameExtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 75
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, v1

    goto :goto_3

    :cond_8
    const-string v3, "bitmapWidthNameExtra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_9

    :goto_4
    move-object p1, v1

    goto :goto_5

    .line 76
    :cond_9
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez p1, :cond_a

    goto :goto_4

    .line 77
    :cond_a
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 78
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_5
    if-nez p1, :cond_b

    .line 81
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x200

    invoke-static {v2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 83
    :cond_b
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->previewSurface:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    if-nez v2, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_c
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_d
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->doneAction:Landroid/widget/ImageView;

    if-nez p1, :cond_e

    const-string p1, "doneAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_e
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->backAction:Landroid/widget/ImageView;

    if-nez p1, :cond_f

    const-string p1, "backAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object v1, p1

    :goto_6
    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity$$ExternalSyntheticLambda3;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
