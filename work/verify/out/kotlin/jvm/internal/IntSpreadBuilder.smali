.class public final Lkotlin/jvm/internal/IntSpreadBuilder;
.super Lkotlin/jvm/internal/PrimitiveSpreadBuilder;
.source "PrimitiveSpreadBuilders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder<",
        "[I>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0007\u001a\u00020\u0002R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/jvm/internal/IntSpreadBuilder;",
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;",
        "",
        "",
        "value",
        "",
        "add",
        "toArray",
        "values",
        "[I",
        "size",
        "<init>",
        "(I)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final values:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;-><init>(I)V

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->values:[I

    return-void
.end method


# virtual methods
.method public final add(I)V
    .registers 5

    iget-object v0, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->values:[I

    invoke-virtual {p0}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->getPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->setPosition(I)V

    aput p1, v0, v1

    return-void
.end method

.method public getSize(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, [I

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length p1, p1

    return p1
.end method

.method public final toArray()[I
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->values:[I

    invoke-virtual {p0}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->toArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [I

    return-object v1
.end method
