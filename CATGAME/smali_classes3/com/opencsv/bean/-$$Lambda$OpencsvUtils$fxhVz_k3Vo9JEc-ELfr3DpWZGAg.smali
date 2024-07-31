.class public final synthetic Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$OpencsvUtils$fxhVz_k3Vo9JEc-ELfr3DpWZGAg;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/opencsv/bean/OpencsvUtils;->lambda$determineMappingStrategy$0(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
