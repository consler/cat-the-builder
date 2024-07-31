.class public final enum Lorg/catrobat/paintroid/FileIO$FileType;
.super Ljava/lang/Enum;
.source "FileIO.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/FileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/FileIO$FileType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/FileIO$FileType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toExtension",
        "PNG",
        "JPG",
        "ORA",
        "CATROBAT",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/FileIO$FileType;

.field public static final enum CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

.field public static final enum JPG:Lorg/catrobat/paintroid/FileIO$FileType;

.field public static final enum ORA:Lorg/catrobat/paintroid/FileIO$FileType;

.field public static final enum PNG:Lorg/catrobat/paintroid/FileIO$FileType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/catrobat/paintroid/FileIO$FileType;

    new-instance v1, Lorg/catrobat/paintroid/FileIO$FileType;

    .line 104
    const-string v2, "PNG"

    const/4 v3, 0x0

    const-string v4, "png"

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/paintroid/FileIO$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/FileIO$FileType;

    .line 105
    const-string v2, "JPG"

    const/4 v3, 0x1

    const-string v4, "jpg"

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/paintroid/FileIO$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/FileIO$FileType;

    .line 106
    const-string v2, "ORA"

    const/4 v3, 0x2

    const-string v4, "ora"

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/paintroid/FileIO$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/FileIO$FileType;

    .line 107
    const-string v2, "CATROBAT"

    const/4 v3, 0x3

    const-string v4, "catrobat-image"

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/paintroid/FileIO$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->$VALUES:[Lorg/catrobat/paintroid/FileIO$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/catrobat/paintroid/FileIO$FileType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/FileIO$FileType;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/FileIO$FileType;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/FileIO$FileType;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->$VALUES:[Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/FileIO$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/FileIO$FileType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/catrobat/paintroid/FileIO$FileType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toExtension()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/paintroid/FileIO$FileType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
