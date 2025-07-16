.class final enum Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
.super Ljava/lang/Enum;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field public static final enum KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field public static final enum VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 89
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const-string v1, "key"

    const-string v2, "KEY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    new-instance v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const-string v2, "value"

    const-string v4, "VALUE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 88
    sput-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->$VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .locals 1

    .line 88
    const-class v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->$VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->description:Ljava/lang/String;

    return-object v0
.end method
