.class Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;
.super Ljava/lang/Object;
.source "ImplicitCollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedItemType"
.end annotation


# instance fields
.field itemFieldName:Ljava/lang/String;

.field itemType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 284
    sget-object p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "java.lang.Object"

    invoke-static {p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    .line 285
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    return-void
.end method

.method private static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 301
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 289
    instance-of v0, p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    .line 291
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    iget-object p1, p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    .line 307
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
