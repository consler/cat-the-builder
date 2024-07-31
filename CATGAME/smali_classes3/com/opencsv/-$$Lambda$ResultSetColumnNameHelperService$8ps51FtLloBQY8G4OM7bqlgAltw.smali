.class public final synthetic Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/ResultSetColumnNameHelperService;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/ResultSetColumnNameHelperService;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;->f$0:Lcom/opencsv/ResultSetColumnNameHelperService;

    iput-object p2, p0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;->f$0:Lcom/opencsv/ResultSetColumnNameHelperService;

    iget-object v1, p0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$8ps51FtLloBQY8G4OM7bqlgAltw;->f$1:[Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->lambda$getColumnValueSubset$1$ResultSetColumnNameHelperService([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
