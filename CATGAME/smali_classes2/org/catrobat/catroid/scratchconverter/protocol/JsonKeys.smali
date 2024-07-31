.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;
.super Ljava/lang/Enum;
.source "JsonKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;,
        Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

.field public static final enum CATEGORY:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

.field public static final enum DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

.field public static final enum TYPE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    const-string v1, "CATEGORY"

    const/4 v2, 0x0

    const-string v3, "category"

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->CATEGORY:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    const-string v1, "DATA"

    const/4 v3, 0x1

    const-string v4, "data"

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    const-string v1, "TYPE"

    const/4 v4, 0x2

    const-string v5, "type"

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->TYPE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    .line 26
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->CATEGORY:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->DATA:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->rawValue:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;
    .locals 1

    .line 26
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;->rawValue:Ljava/lang/String;

    return-object v0
.end method
