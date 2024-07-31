.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState$CREATOR;
.super Ljava/lang/Object;
.source "ColorPickerView.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;",
        "()V",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;",
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

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 228
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState$CREATOR;->newArray(I)[Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 230
    new-array v0, p1, [Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    return-object v0
.end method
