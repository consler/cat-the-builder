.class public final synthetic Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;

    invoke-direct {v0}, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;-><init>()V

    sput-object v0, Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;->INSTANCE:Lcom/opencsv/-$$Lambda$ResultSetColumnNameHelperService$RUQgMwaW-C2NUNE8fQVFpFAXZ04;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/opencsv/ResultSetColumnNameHelperService;->lambda$hasInvalidValue$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
