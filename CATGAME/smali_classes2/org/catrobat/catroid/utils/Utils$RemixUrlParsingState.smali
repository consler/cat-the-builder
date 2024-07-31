.class final enum Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemixUrlParsingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

.field public static final enum BETWEEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

.field public static final enum STARTING:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

.field public static final enum TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 96
    new-instance v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->STARTING:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    new-instance v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    const-string v1, "TOKEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    new-instance v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    const-string v1, "BETWEEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->BETWEEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    .line 95
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    sget-object v5, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->STARTING:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->TOKEN:Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->$VALUES:[Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    const-class v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;
    .locals 1

    .line 95
    sget-object v0, Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->$VALUES:[Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/utils/Utils$RemixUrlParsingState;

    return-object v0
.end method
