.class final Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LiveDataExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->combine(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "combine",
        "",
        "A",
        "B",
        "C",
        "invoke",
        "org/catrobat/catroid/utils/LiveDataExtensionsKt$combine$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $a$inlined:Landroidx/lifecycle/LiveData;

.field final synthetic $b$inlined:Landroidx/lifecycle/LiveData;

.field final synthetic $c$inlined:Landroidx/lifecycle/LiveData;

.field final synthetic $this_apply:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$a$inlined:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$b$inlined:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$c$inlined:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$a$inlined:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "aValue":Ljava/lang/Object;
    iget-object v1, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$b$inlined:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "bValue":Ljava/lang/Object;
    iget-object v2, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$c$inlined:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "cValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 43
    iget-object v3, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    new-instance v4, Lkotlin/Triple;

    invoke-direct {v4, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method
