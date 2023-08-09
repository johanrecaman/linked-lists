require_relative 'node'

class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        if @head.nil?
            @head = Node.new(value)
            @tail = @head
        else
            @tail.next_node = Node.new(value)
            @tail = @tail.next_node
        end
    end

    def prepend(value)
        if @head.nil?
            @head = Node.new(value)
            @tail = @head
        else
            new_node = Node.new(value)
            new_node.next_node = @head
            @head = new_node
        end
    end

    def size
        count = 0
        node = @head
        while node
            count += 1
            node = node.next_node
        end
        count
    end

    def head
        @head.value
    end

    def tail
        @tail.value
    end

    def at(index)
        node = @head
        for i in 0..index
            node = node.next_node
        end
        node
    end
    
    def pop
        node = @head
        while node.next_node.next_node
            node = node.next_node
        end
        node.next_node = nil
        @tail = node
    end

    def contains?(value)
        node = @head
        while node
            if node.value == value
                return true
            end
            node = node.next_node
        end
        false
    end

    def find(value)
        node = @head
        count = 1
        while node
            if node.value == value
                return count
            end
            node = node.next_node
            count += 1
        end
        nil
    end

    def to_s
        node = @head
        while node
            print "(#{node.value}) -> "
            node = node.next_node
        end
        puts "nil"
    end
end