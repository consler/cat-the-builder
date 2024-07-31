.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;
.super Ljava/lang/Object;
.source "ColorPickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "newInstance",
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;",
        "initialColor",
        "",
        "catroidFlag",
        "",
        "openedFromFormulaEditorInCatroidFlag",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 80
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;IZZILjava/lang/Object;)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 86
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 7
    .param p1, "initialColor"    # I
    .param p2, "catroidFlag"    # Z
    .param p3, "openedFromFormulaEditorInCatroidFlag"    # Z

    .line 88
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;-><init>()V

    .line 89
    .local v0, "dialog":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    if-eqz p3, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 89
    :goto_0
    nop

    .line 92
    .local v1, "alpha":I
    nop

    .line 93
    nop

    .line 94
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 95
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 96
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 92
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 98
    .local v2, "color":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$apply":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 99
    .local v5, "$i$a$-apply-ColorPickerDialog$Companion$newInstance$bundle$1":I
    const-string v6, "InitialColor"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v6, "CurrentColor"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v6, "InitialCatroidFlag"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 102
    const-string v6, "OpenedFromFormulaEditorCatroidFlag"

    invoke-virtual {v4, v6, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    nop

    .line 98
    .end local v4    # "$this$apply":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-ColorPickerDialog$Companion$newInstance$bundle$1":I
    nop

    .line 107
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v0
.end method
