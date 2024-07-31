.class public final synthetic Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/AbstractMappingStrategy;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iput-object p2, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;->f$0:Lcom/opencsv/bean/AbstractMappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;->f$1:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->lambda$filterIgnoredFields$1$AbstractMappingStrategy(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
