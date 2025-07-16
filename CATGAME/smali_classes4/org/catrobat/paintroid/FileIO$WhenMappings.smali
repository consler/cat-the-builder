.class public final synthetic Lorg/catrobat/paintroid/FileIO$WhenMappings;
.super Ljava/lang/Object;
.source "FileIO.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/FileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/catrobat/paintroid/FileIO$FileType;->values()[Lorg/catrobat/paintroid/FileIO$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lorg/catrobat/paintroid/FileIO$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
