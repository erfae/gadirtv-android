.class public final synthetic Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->$r8$lambda$JsR436BXQlq05FiY7NprZyx73Ys(Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method
