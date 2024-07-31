.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->lambda$onBindViewHolder$4(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
