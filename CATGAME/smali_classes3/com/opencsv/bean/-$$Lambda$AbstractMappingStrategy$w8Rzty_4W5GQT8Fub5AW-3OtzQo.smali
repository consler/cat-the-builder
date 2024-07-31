.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$partitionFields$3(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
