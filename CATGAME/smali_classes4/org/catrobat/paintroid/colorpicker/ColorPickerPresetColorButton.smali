.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ColorPickerPresetColorButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001c\u0010\u0004\u001a\u00020\u0005@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;",
        "Landroidx/appcompat/widget/AppCompatImageButton;",
        "context",
        "Landroid/content/Context;",
        "color",
        "",
        "(Landroid/content/Context;I)V",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
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


# instance fields
.field private color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$attr;->borderlessButtonStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 40
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 41
    sget-object p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    check-cast p2, Landroid/graphics/Shader;

    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    invoke-virtual {p1, p2, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, -0x1000000

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    return v0
.end method

.method public final setColor(I)V
    .locals 0

    .line 34
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    return-void
.end method
