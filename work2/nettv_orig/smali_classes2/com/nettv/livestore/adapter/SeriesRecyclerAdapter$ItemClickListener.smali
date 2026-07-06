.class public interface abstract Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;
.super Ljava/lang/Object;
.source "SeriesRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemClickListener"
.end annotation


# virtual methods
.method public abstract onFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V
.end method

.method public abstract onFocusPosition(I)V
.end method

.method public abstract onItemClick(Lcom/nettv/livestore/models/SeriesModel;I)V
.end method

.method public abstract onUnFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V
.end method
