.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$1$9eifaremRn92uWSTnMnXIqodnU0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/opencsv/bean/FieldMapByPosition$1;->lambda$nextIterator$0(Ljava/util/Map$Entry;)Lcom/opencsv/bean/FieldMapByPositionEntry;

    move-result-object p1

    return-object p1
.end method
