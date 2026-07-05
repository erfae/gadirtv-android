.class final Lorg/androidannotations/api/BackgroundExecutor$1;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"

# interfaces
.implements Lorg/androidannotations/api/BackgroundExecutor$WrongThreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/BackgroundExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onBgExpected([Ljava/lang/String;)V
    .registers 5

    .line 1
    array-length v0, p1

    if-nez v0, :cond_b

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method invocation is expected from a background thread, but it was called from the UI thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method invocation is expected from one of serials "

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ", but it was called from the UI thread"

    .line 6
    invoke-static {v1, p1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUiExpected()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method invocation is expected from the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs onWrongBgSerial(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    const-string p1, "anonymous"

    .line 1
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method invocation is expected from one of serials "

    .line 2
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ", but it was called from "

    const-string v3, " serial"

    .line 4
    invoke-static {v1, p2, v2, p1, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
