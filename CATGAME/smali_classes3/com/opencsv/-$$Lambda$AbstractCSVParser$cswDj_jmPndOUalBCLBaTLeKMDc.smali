.class public final synthetic Lcom/opencsv/-$$Lambda$AbstractCSVParser$cswDj_jmPndOUalBCLBaTLeKMDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/AbstractCSVParser;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/AbstractCSVParser;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/-$$Lambda$AbstractCSVParser$cswDj_jmPndOUalBCLBaTLeKMDc;->f$0:Lcom/opencsv/AbstractCSVParser;

    iput-boolean p2, p0, Lcom/opencsv/-$$Lambda$AbstractCSVParser$cswDj_jmPndOUalBCLBaTLeKMDc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/opencsv/-$$Lambda$AbstractCSVParser$cswDj_jmPndOUalBCLBaTLeKMDc;->f$0:Lcom/opencsv/AbstractCSVParser;

    iget-boolean v1, p0, Lcom/opencsv/-$$Lambda$AbstractCSVParser$cswDj_jmPndOUalBCLBaTLeKMDc;->f$1:Z

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/opencsv/AbstractCSVParser;->lambda$parseToLine$0$AbstractCSVParser(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
