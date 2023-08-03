require_relative 'node'

class LinkedList
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

end