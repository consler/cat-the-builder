.class public final synthetic Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->values()[Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->RECTANGLE:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->OVAL:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->HEART:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->STAR:Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
