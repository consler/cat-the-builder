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
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0007J*\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
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
        "colorHistory",
        "Lorg/catrobat/paintroid/colorpicker/ColorHistory;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;IZZILjava/lang/Object;)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newInstance$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;IZZLorg/catrobat/paintroid/colorpicker/ColorHistory;ILjava/lang/Object;)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 116
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;->newInstance(IZZLorg/catrobat/paintroid/colorpicker/ColorHistory;)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(IZZ)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Does not support ColorHistory"
    .end annotation

    .line 92
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;-><init>()V

    if-eqz p3, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 98
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 100
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 96
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "InitialColor"

    .line 103
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CurrentColor"

    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "InitialCatroidFlag"

    .line 105
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "OpenedFromFormulaEditorCatroidFlag"

    .line 106
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "colorHistory"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final newInstance(IZZLorg/catrobat/paintroid/colorpicker/ColorHistory;)Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .locals 5

    const-string v0, "colorHistory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;-><init>()V

    if-eqz p3, :cond_0

    const/16 v2, 0xff

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 128
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 129
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 130
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 126
    invoke-static {v2, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "InitialColor"

    .line 133
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CurrentColor"

    .line 134
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "InitialCatroidFlag"

    .line 135
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "OpenedFromFormulaEditorCatroidFlag"

    .line 136
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {p4}, Lorg/catrobat/paintroid/colorpicker/ColorHistory;->getColors()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
