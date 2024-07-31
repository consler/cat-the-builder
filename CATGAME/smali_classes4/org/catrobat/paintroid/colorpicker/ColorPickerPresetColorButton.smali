.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ColorPickerPresetColorButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 35
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$attr;->borderlessButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    .line 37
    nop

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    nop

    .line 40
    .local v0, "checkeredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 41
    .local v1, "bitmapShader":Landroid/graphics/BitmapShader;
    sget-object v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    move-object v3, v1

    check-cast v3, Landroid/graphics/Shader;

    iget v4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .end local v0    # "checkeredBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapShader":Landroid/graphics/BitmapShader;
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 34
    const/high16 p2, -0x1000000

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
    .param p1, "<set-?>"    # I

    .line 34
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->color:I

    return-void
.end method
