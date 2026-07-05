.class public Lorg/androidannotations/api/view/OnViewChangedNotifier;
.super Ljava/lang/Object;
.source "OnViewChangedNotifier.java"


# static fields
.field private static currentNotifier:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/view/OnViewChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->listeners:Ljava/util/List;

    return-void
.end method

.method public static registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->currentNotifier:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->currentNotifier:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 2
    sput-object p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->currentNotifier:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-object v0
.end method


# virtual methods
.method public notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/view/OnViewChangedListener;

    .line 2
    invoke-interface {v1, p1}, Lorg/androidannotations/api/view/OnViewChangedListener;->onViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    goto :goto_0

    :cond_0
    return-void
.end method
