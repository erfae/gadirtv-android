.class public abstract Landroidx/leanback/database/CursorMapper;
.super Ljava/lang/Object;
.source "CursorMapper.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bind()Ljava/lang/Object;
.end method

.method public abstract bindColumns()V
.end method

.method public convert(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/database/CursorMapper;->bindColumns()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/database/CursorMapper;->bind()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
