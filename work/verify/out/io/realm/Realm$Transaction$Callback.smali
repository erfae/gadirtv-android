.class public Lio/realm/Realm$Transaction$Callback;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
