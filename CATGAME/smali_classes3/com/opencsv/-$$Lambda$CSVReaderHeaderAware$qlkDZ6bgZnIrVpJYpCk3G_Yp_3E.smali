.class public final synthetic Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;

    invoke-direct {v0}, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;-><init>()V

    sput-object v0, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;->INSTANCE:Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/opencsv/CSVReaderHeaderAware;->lambda$readMap$1(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
