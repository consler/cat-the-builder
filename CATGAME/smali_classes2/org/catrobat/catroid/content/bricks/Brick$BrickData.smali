.class public final enum Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
.super Ljava/lang/Enum;
.source "Brick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/Brick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrickData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/Brick$BrickData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field public static final enum ASSERT_LISTS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field public static final enum ASSERT_LISTS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field public static final EXPECTS_USERLIST:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field public static final enum FOR_ITEM_IN_USERLIST_LIST:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field public static final enum FOR_ITEM_IN_USERLIST_VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 107
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const-string v1, "ASSERT_LISTS_EXPECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const-string v1, "ASSERT_LISTS_ACTUAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const-string v1, "FOR_ITEM_IN_USERLIST_LIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_LIST:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 108
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    const-string v1, "FOR_ITEM_IN_USERLIST_VARIABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 106
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    sget-object v6, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_EXPECTED:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    aput-object v6, v1, v2

    sget-object v7, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->ASSERT_LISTS_ACTUAL:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    aput-object v7, v1, v3

    sget-object v8, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->FOR_ITEM_IN_USERLIST_LIST:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    aput-object v8, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->$VALUES:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 110
    new-array v0, v5, [Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    aput-object v6, v0, v2

    aput-object v7, v0, v3

    aput-object v8, v0, v4

    sput-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->EXPECTS_USERLIST:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z
    .locals 6
    .param p0, "field"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 114
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->EXPECTS_USERLIST:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 115
    .local v4, "bf":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    invoke-virtual {v4, p0}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 114
    .end local v4    # "bf":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    .locals 1

    .line 106
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->$VALUES:[Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    return-object v0
.end method
